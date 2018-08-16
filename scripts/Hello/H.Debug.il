.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit P
    extends [System.Private.CoreLib]System.Object
{
    // Methods
    .method private hidebysig 
        instance void Main () cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 12 (0xc)
        .maxstack 8

        IL_0000: ldstr "Hello"
        IL_0005: call void [System.Console]System.Console::WriteLine(string)
        IL_000a: nop
        IL_000b: ret
    } // end of method P::Main

    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        // Method begins at RVA 0x205d
        // Code size 8 (0x8)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
        IL_0006: nop
        IL_0007: ret
    } // end of method P::.ctor

} // end of class P

