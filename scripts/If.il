.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit Program
    extends [System.Private.CoreLib]System.Object
{
    // Methods
    .method private hidebysig 
        instance string GetA (
            int32 a
        ) cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 16 (0x10)
        .maxstack 8

        IL_0000: ldarg.1
        IL_0001: brfalse.s IL_000a

        IL_0003: ldstr "Yes"
        IL_0008: br.s IL_000f

        IL_000a: ldstr "NO"

        IL_000f: ret
    } // end of method Program::GetA

    .method private hidebysig 
        instance string GetB (
            int32 a
        ) cil managed 
    {
        // Method begins at RVA 0x2064
        // Code size 27 (0x1b)
        .maxstack 2
        .locals init (
            [0] bool,
            [1] string
        )

        IL_0000: nop
        IL_0001: ldarg.1
        IL_0002: ldc.i4.0
        IL_0003: ceq
        IL_0005: stloc.0
        IL_0006: ldloc.0
        IL_0007: brfalse.s IL_0011

        IL_0009: ldstr "No"
        IL_000e: stloc.1
        IL_000f: br.s IL_0019

        IL_0011: ldstr "Yes"
        IL_0016: stloc.1
        IL_0017: br.s IL_0019

        IL_0019: ldloc.1
        IL_001a: ret
    } // end of method Program::GetB

    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        // Method begins at RVA 0x208b
        // Code size 8 (0x8)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
        IL_0006: nop
        IL_0007: ret
    } // end of method Program::.ctor

} // end of class Program

