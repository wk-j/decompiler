using System;
using Decompiler.Core;

namespace Decompiler {
    class Program {
        static void Main(string[] args) {
            var csPath = args[0];
            var ps = new Processor();
            var rs = ps.ConvertCsToIl(csPath);

            Console.WriteLine($" > {rs.DebugIl}");
            Console.WriteLine($" > {rs.ReleaseIl}");
            Console.WriteLine($" > {rs.Cs}");
        }
    }
}
