using System;

namespace Decompiler {
    class Program {
        static void Main(string[] args) {
            var csPath = args[0];
            var ps = new Processor();
            ps.ConvertCsToIl(csPath);
        }
    }
}
