using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using ICSharpCode.Decompiler;
using ICSharpCode.Decompiler.CSharp;
using ICSharpCode.Decompiler.CSharp.Syntax;
using ICSharpCode.Decompiler.Disassembler;
using ICSharpCode.Decompiler.Metadata;
using ICSharpCode.Decompiler.TypeSystem;
using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;

class Processor {
    private Microsoft.CodeAnalysis.SyntaxTree Parse(string code) {
        var tree = CSharpSyntaxTree.ParseText(code);
        return tree;
    }

    private IEnumerable<MetadataReference> GetReferences() {
        var asm = typeof(Processor).Assembly;
        var refs = AppDomain.CurrentDomain.GetAssemblies().Select(x => {
            // Console.WriteLine(x.Location);
            return MetadataReference.CreateFromFile(x.Location);
        });
        return refs;
    }

    private CSharpCompilation CompileTree(Microsoft.CodeAnalysis.SyntaxTree tree) {
        var references = new MetadataReference[] {
            MetadataReference.CreateFromFile(typeof(Console).Assembly.Location)
        };

        var all = references.Concat(GetReferences());

        var com = CSharpCompilation.Create(
            "Hello",
            syntaxTrees: new[] { tree },
            references: all,
            options: new CSharpCompilationOptions(OutputKind.DynamicallyLinkedLibrary)
        );
        return com;
    }

    private (bool, string) CreateDll(CSharpCompilation compile, String filePath) {
        using (var memory = new MemoryStream()) {
            var result = compile.Emit(memory);
            if (!result.Success) {
                foreach (var item in result.Diagnostics.Where(x => x.Severity == DiagnosticSeverity.Error)) {
                    Console.WriteLine($"! {item}");
                }

                var k = typeof(Console).Assembly.Location;
                Console.WriteLine(k);
                return (false, "");
            } else {
                var file = filePath;
                File.WriteAllBytes(file, memory.ToArray());
                return (true, file);
            }
        }
    }

    private bool CreateDllFromCs(string csFile, string outputPath) {
        var code = File.ReadAllText(csFile);
        var tree = Parse(code);
        var compile = CompileTree(tree);
        var (ok, _) = CreateDll(compile, outputPath);
        return ok;
    }

    private void DecopmileDllToCs(string dllFile) {
        var dec = new CSharpDecompiler(dllFile, new DecompilerSettings());
        var name = new FullTypeName("Program");
        var rs = dec.DecompileTypeAsString(name);
        Console.WriteLine(rs);
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
        var dllPath = Path.ChangeExtension(csPath, "dll");
        var ilPath = Path.ChangeExtension(csPath, ".il");
        var text = File.CreateText(ilPath);
        var ok = CreateDllFromCs(csPath, dllPath);
        if (ok) {
            DecompileDllToIl(dllPath, ilPath);
            File.Delete(dllPath);
            return ilPath;
        }
        return "";
    }
}