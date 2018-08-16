using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading;
using ICSharpCode.Decompiler;
using ICSharpCode.Decompiler.CSharp;
using ICSharpCode.Decompiler.CSharp.Syntax;
using ICSharpCode.Decompiler.Disassembler;
using ICSharpCode.Decompiler.Metadata;
using ICSharpCode.Decompiler.TypeSystem;
using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis.CSharp.Scripting;
using Microsoft.CodeAnalysis.Emit;
using Microsoft.CodeAnalysis.Scripting;

class Processor {
    private Microsoft.CodeAnalysis.SyntaxTree Parse(string code) {
        var tree = CSharpSyntaxTree.ParseText(code);
        return tree;
    }

    private IEnumerable<MetadataReference> GetReferences() {
        var asm = typeof(Processor).Assembly;
        var refs = AppDomain.CurrentDomain.GetAssemblies().Select(x => {
            return MetadataReference.CreateFromFile(x.Location);
        });
        return refs;
    }

    private ImmutableArray<string> GetUsings() {
        var usings = ImmutableArray.Create(
            "System",
            "System.IO",
            "System.Collections.Generic",
            "System.Console",
            "System.Diagnostics",
            // "System.Dynamic",
            "System.Linq",
            // "System.Linq.Expressions",
            "System.Text",
            "System.Threading.Tasks"
        );
        return usings;
    }


    private Compilation CompileCSharp(Microsoft.CodeAnalysis.SyntaxTree tree, OptimizationLevel level) {
        var references = new MetadataReference[] {
            MetadataReference.CreateFromFile(typeof(Object).Assembly.Location),
            MetadataReference.CreateFromFile(typeof(Console).Assembly.Location),
        };
        var all = references.Concat(GetReferences());
        var usings = GetUsings();
        var com = CSharpCompilation.Create(
            "Hello",
            syntaxTrees: new[] { tree },
            references: all,
            options: new CSharpCompilationOptions(OutputKind.DynamicallyLinkedLibrary)
                .WithScriptClassName("Hello")
                .WithOptimizationLevel(level)
        );
        return com;
    }

    private Compilation CompileScript(Microsoft.CodeAnalysis.SyntaxTree tree, OptimizationLevel level) {
        var references = new MetadataReference[] {
            MetadataReference.CreateFromFile(typeof(Object).Assembly.Location),
            MetadataReference.CreateFromFile(typeof(Console).Assembly.Location),
            MetadataReference.CreateFromFile(typeof(Enumerable).Assembly.Location),
        };

        var all = references.Concat(GetReferences());

        var usings = GetUsings();
        var options = ScriptOptions.Default
            .WithImports(usings)
            .WithReferences(references);

        var script = CSharpScript.Create(tree.ToString(), options);
        var com = script.GetCompilation();

        if (level == OptimizationLevel.Release)
            SetReleaseOptimizationLevel(com);

        return com;
    }

    private static void SetReleaseOptimizationLevel(Compilation compilation) {
        var compilationOptionsField = typeof(CSharpCompilation).GetTypeInfo().GetDeclaredField("_options");
        var compilationOptions = (CSharpCompilationOptions)compilationOptionsField.GetValue(compilation);
        compilationOptions =
            compilationOptions
                .WithMainTypeName("Program")
                .WithOutputKind(OutputKind.ConsoleApplication)
                .WithOptimizationLevel(OptimizationLevel.Release);

        compilationOptionsField.SetValue(compilation, compilationOptions);
    }

    private (bool, string) CreateDll(Compilation compile, String filePath) {
        using (var memory = new MemoryStream()) {
            var result = compile.Emit(memory);
            if (!result.Success) {
                foreach (var item in result.Diagnostics.Where(x => x.Severity == DiagnosticSeverity.Error)) {
                    Console.WriteLine($"  ! {item}");
                }
                return (false, "");
            } else {
                var file = filePath;
                File.WriteAllBytes(file, memory.ToArray());
                return (true, file);
            }
        }
    }

    private bool CreateDllFromCs(string csFile, string outputPath, OptimizationLevel level) {
        var code = File.ReadAllText(csFile);
        var tree = Parse(code);
        var compile = CompileCSharp(tree, level);
        var (ok, _) = CreateDll(compile, outputPath);
        return ok;
    }

    private bool CreateDllFromScript(string csFile, string outputPath, OptimizationLevel level) {
        var code = File.ReadAllText(csFile);
        var tree = Parse(code);
        var compile = CompileScript(tree, level);
        var (ok, _) = CreateDll(compile, outputPath);
        return ok;
    }

    private void DecopmileDllToCs(string dllFile, string csPath) {
        var dec = new CSharpDecompiler(dllFile, new DecompilerSettings());
        //var name = new FullTypeName("Submission#0");
        var rs = dec.DecompileWholeModuleAsString();
        File.WriteAllText(csPath, rs);
    }

    private void DecompileDllToIl(string dllFile, string ilPath) {
        var writer = File.CreateText(ilPath);
        var output = new SpaceIndentingPlainTextOutput(writer);
        var disassembler = new ReflectionDisassembler(output, CancellationToken.None) {
            ShowSequencePoints = true
        };
        var assemblyFile = new PEFile(dllFile);
        disassembler.WriteModuleContents(assemblyFile);
        writer.Close();
    }

    public string ConvertCsToIl(String csPath) {
        var levels = new[] {
            OptimizationLevel.Debug,
            OptimizationLevel.Release
        };

        var dllPath = Path.ChangeExtension(csPath, "dll");

        foreach (var item in levels) {
            var ilPath = Path.ChangeExtension(csPath, $".{item}.il");
            var newCsPath = Path.ChangeExtension(csPath, $"{item}.cs");
            var text = File.CreateText(ilPath);
            var ok = CreateDllFromCs(csPath, dllPath, item);
            if (ok) {
                DecompileDllToIl(dllPath, ilPath);
            }
        }
        DecopmileDllToCs(dllPath, Path.ChangeExtension(csPath, $".Source.cake"));
        File.Delete(dllPath);

        return "";
    }
}