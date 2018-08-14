using System;
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

class Processor
{
    Microsoft.CodeAnalysis.SyntaxTree Tree(string code)
    {
        var tree = CSharpSyntaxTree.ParseText(code);
        return tree;
    }

    CSharpCompilation Compile(Microsoft.CodeAnalysis.SyntaxTree tree)
    {
        MetadataReference[] references = new MetadataReference[] {
        MetadataReference.CreateFromFile(typeof(object).Assembly.Location),
        MetadataReference.CreateFromFile(typeof(Enumerable).Assembly.Location)
    };
        var com = CSharpCompilation.Create(
            "Hello",
            syntaxTrees: new[] { tree },
            references: references,
            options: new CSharpCompilationOptions(OutputKind.DynamicallyLinkedLibrary)
        );
        return com;
    }

    (bool, string) Write(CSharpCompilation compile)
    {
        using (var memory = new MemoryStream())
        {
            var result = compile.Emit(memory);
            if (!result.Success)
            {
                foreach (var item in result.Diagnostics.Where(x => x.Severity == DiagnosticSeverity.Error))
                {
                    Console.WriteLine(item);
                }
                return (false, "");
            }
            else
            {
                var file = "Dll.dll";
                File.WriteAllBytes(file, memory.ToArray());
                return (true, file);
            }
        }
    }

    void DecopmileToCs(string file)
    {
        var dec = new CSharpDecompiler(file, new DecompilerSettings());
        var name = new FullTypeName("Program");
        var rs = dec.DecompileTypeAsString(name);
        Console.WriteLine(rs);
    }

    void DecompileToIl(string dll, TextWriter writer)
    {
        var output = new SpaceIndentingPlainTextOutput(writer);
        var disassembler = new ReflectionDisassembler(output, CancellationToken.None)
        {
            ShowSequencePoints = true
        };
        var assemblyFile = new PEFile(dll);
        disassembler.WriteModuleContents(assemblyFile);
    }
}