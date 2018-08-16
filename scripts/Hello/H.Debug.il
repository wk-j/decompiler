.class private auto ansi '<Module>'
{
} // end of class <Module>

.class public auto ansi sealed beforefieldinit 'Submission#0'
    extends [System.Private.CoreLib]System.Object
{
    // Nested Types
    .class nested public auto ansi beforefieldinit P
        extends [System.Private.CoreLib]System.Object
    {
        // Methods
        .method private hidebysig 
            instance void Main () cil managed 
        {
            // Method begins at RVA 0x20b2
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
            // Method begins at RVA 0x20bf
            // Code size 8 (0x8)
            .maxstack 8

            IL_0000: ldarg.0
            IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
            IL_0006: nop
            IL_0007: ret
        } // end of method P::.ctor

    } // end of class P

    .class nested public auto ansi sealed beforefieldinit '<<Initialize>>d__0'
        extends [System.Private.CoreLib]System.Object
        implements [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine
    {
        // Fields
        .field public int32 '<>1__state'
        .field public valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> '<>t__builder'
        .field public class 'Submission#0' '<>4__this'

        // Methods
        .method public hidebysig specialname rtspecialname 
            instance void .ctor () cil managed 
        {
            // Method begins at RVA 0x20bf
            // Code size 8 (0x8)
            .maxstack 8

            IL_0000: ldarg.0
            IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
            IL_0006: nop
            IL_0007: ret
        } // end of method '<<Initialize>>d__0'::.ctor

        .method private final hidebysig newslot virtual 
            instance void MoveNext () cil managed 
        {
            .override method instance void [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext()
            // Method begins at RVA 0x20c8
            // Code size 68 (0x44)
            .maxstack 2
            .locals init (
                [0] int32,
                [1] object,
                [2] class [System.Private.CoreLib]System.Exception
            )

            IL_0000: ldarg.0
            IL_0001: ldfld int32 'Submission#0'/'<<Initialize>>d__0'::'<>1__state'
            IL_0006: stloc.0
            .try
            {
                IL_0007: ldstr "Hello, world!"
                IL_000c: call void [System.Console]System.Console::WriteLine(string)
                IL_0011: nop
                IL_0012: ldnull
                IL_0013: stloc.1
                IL_0014: leave.s IL_002e
            } // end .try
            catch [System.Private.CoreLib]System.Exception
            {
                IL_0016: stloc.2
                IL_0017: ldarg.0
                IL_0018: ldc.i4.s -2
                IL_001a: stfld int32 'Submission#0'/'<<Initialize>>d__0'::'<>1__state'
                IL_001f: ldarg.0
                IL_0020: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
                IL_0025: ldloc.2
                IL_0026: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::SetException(class [System.Private.CoreLib]System.Exception)
                IL_002b: nop
                IL_002c: leave.s IL_0043
            } // end handler

            IL_002e: ldarg.0
            IL_002f: ldc.i4.s -2
            IL_0031: stfld int32 'Submission#0'/'<<Initialize>>d__0'::'<>1__state'
            IL_0036: ldarg.0
            IL_0037: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
            IL_003c: ldloc.1
            IL_003d: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::SetResult(!0)
            IL_0042: nop

            IL_0043: ret
        } // end of method '<<Initialize>>d__0'::MoveNext

        .method private final hidebysig newslot virtual 
            instance void SetStateMachine (
                class [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine
            ) cil managed 
        {
            .custom instance void [System.Private.CoreLib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
                01 00 00 00
            )
            .override method instance void [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine(class [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine)
            // Method begins at RVA 0x2128
            // Code size 1 (0x1)
            .maxstack 8

            IL_0000: ret
        } // end of method '<<Initialize>>d__0'::SetStateMachine

    } // end of class <<Initialize>>d__0


    // Methods
    .method public hidebysig specialname 
        instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<object> '<Initialize>' () cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 60 (0x3c)
        .maxstack 2
        .locals init (
            [0] class 'Submission#0'/'<<Initialize>>d__0',
            [1] valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>
        )

        IL_0000: newobj instance void 'Submission#0'/'<<Initialize>>d__0'::.ctor()
        IL_0005: stloc.0
        IL_0006: ldloc.0
        IL_0007: ldarg.0
        IL_0008: stfld class 'Submission#0' 'Submission#0'/'<<Initialize>>d__0'::'<>4__this'
        IL_000d: ldloc.0
        IL_000e: call valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::Create()
        IL_0013: stfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
        IL_0018: ldloc.0
        IL_0019: ldc.i4.m1
        IL_001a: stfld int32 'Submission#0'/'<<Initialize>>d__0'::'<>1__state'
        IL_001f: ldloc.0
        IL_0020: ldfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
        IL_0025: stloc.1
        IL_0026: ldloca.s 1
        IL_0028: ldloca.s 0
        IL_002a: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::Start<class 'Submission#0'/'<<Initialize>>d__0'>(!!0&)
        IL_002f: nop
        IL_0030: ldloc.0
        IL_0031: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
        IL_0036: call instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::get_Task()
        IL_003b: ret
    } // end of method 'Submission#0'::'<Initialize>'

    .method public hidebysig specialname rtspecialname 
        instance void .ctor (
            object[] submissionArray
        ) cil managed 
    {
        // Method begins at RVA 0x2098
        // Code size 12 (0xc)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
        IL_0006: nop
        IL_0007: ldarg.1
        IL_0008: ldc.i4.1
        IL_0009: ldarg.0
        IL_000a: stelem.ref
        IL_000b: ret
    } // end of method 'Submission#0'::.ctor

    .method public hidebysig specialname static 
        class [System.Private.CoreLib]System.Threading.Tasks.Task`1<object> '<Factory>' (
            object[] submissionArray
        ) cil managed 
    {
        // Method begins at RVA 0x20a5
        // Code size 12 (0xc)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: newobj instance void 'Submission#0'::.ctor(object[])
        IL_0006: callvirt instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<object> 'Submission#0'::'<Initialize>'()
        IL_000b: ret
    } // end of method 'Submission#0'::'<Factory>'

} // end of class Submission#0

