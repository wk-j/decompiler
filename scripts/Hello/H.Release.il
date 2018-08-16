.class private auto ansi '<Module>'
{
} // end of class <Module>

.class public auto ansi sealed beforefieldinit 'Submission#0'
    extends [System.Private.CoreLib]System.Object
{
    // Nested Types
    .class nested public auto ansi sealed beforefieldinit '<<Initialize>>d__0'
        extends [System.Private.CoreLib]System.ValueType
        implements [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine
    {
        // Fields
        .field public int32 '<>1__state'
        .field public valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> '<>t__builder'

        // Methods
        .method private final hidebysig newslot virtual 
            instance void MoveNext () cil managed 
        {
            .override method instance void [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext()
            // Method begins at RVA 0x20a8
            // Code size 58 (0x3a)
            .maxstack 2
            .locals init (
                [0] object,
                [1] class [System.Private.CoreLib]System.Exception
            )

            .try
            {
                IL_0000: ldstr "Hello, world!"
                IL_0005: call void [System.Console]System.Console::WriteLine(string)
                IL_000a: ldnull
                IL_000b: stloc.0
                IL_000c: leave.s IL_0025
            } // end .try
            catch [System.Private.CoreLib]System.Exception
            {
                IL_000e: stloc.1
                IL_000f: ldarg.0
                IL_0010: ldc.i4.s -2
                IL_0012: stfld int32 'Submission#0'/'<<Initialize>>d__0'::'<>1__state'
                IL_0017: ldarg.0
                IL_0018: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
                IL_001d: ldloc.1
                IL_001e: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::SetException(class [System.Private.CoreLib]System.Exception)
                IL_0023: leave.s IL_0039
            } // end handler

            IL_0025: ldarg.0
            IL_0026: ldc.i4.s -2
            IL_0028: stfld int32 'Submission#0'/'<<Initialize>>d__0'::'<>1__state'
            IL_002d: ldarg.0
            IL_002e: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
            IL_0033: ldloc.0
            IL_0034: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::SetResult(!0)

            IL_0039: ret
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
            // Method begins at RVA 0x2100
            // Code size 13 (0xd)
            .maxstack 8

            IL_0000: ldarg.0
            IL_0001: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
            IL_0006: ldarg.1
            IL_0007: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::SetStateMachine(class [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine)
            IL_000c: ret
        } // end of method '<<Initialize>>d__0'::SetStateMachine

    } // end of class <<Initialize>>d__0


    // Methods
    .method public hidebysig specialname 
        instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<object> '<Initialize>' () cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 49 (0x31)
        .maxstack 2
        .locals init (
            [0] valuetype 'Submission#0'/'<<Initialize>>d__0',
            [1] valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>
        )

        IL_0000: ldloca.s 0
        IL_0002: call valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::Create()
        IL_0007: stfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
        IL_000c: ldloca.s 0
        IL_000e: ldc.i4.m1
        IL_000f: stfld int32 'Submission#0'/'<<Initialize>>d__0'::'<>1__state'
        IL_0014: ldloc.0
        IL_0015: ldfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
        IL_001a: stloc.1
        IL_001b: ldloca.s 1
        IL_001d: ldloca.s 0
        IL_001f: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::Start<valuetype 'Submission#0'/'<<Initialize>>d__0'>(!!0&)
        IL_0024: ldloca.s 0
        IL_0026: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object> 'Submission#0'/'<<Initialize>>d__0'::'<>t__builder'
        IL_002b: call instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<object>::get_Task()
        IL_0030: ret
    } // end of method 'Submission#0'::'<Initialize>'

    .method public hidebysig specialname rtspecialname 
        instance void .ctor (
            object[] submissionArray
        ) cil managed 
    {
        // Method begins at RVA 0x208d
        // Code size 11 (0xb)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
        IL_0006: ldarg.1
        IL_0007: ldc.i4.1
        IL_0008: ldarg.0
        IL_0009: stelem.ref
        IL_000a: ret
    } // end of method 'Submission#0'::.ctor

    .method public hidebysig specialname static 
        class [System.Private.CoreLib]System.Threading.Tasks.Task`1<object> '<Factory>' (
            object[] submissionArray
        ) cil managed 
    {
        // Method begins at RVA 0x2099
        // Code size 12 (0xc)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: newobj instance void 'Submission#0'::.ctor(object[])
        IL_0006: callvirt instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<object> 'Submission#0'::'<Initialize>'()
        IL_000b: ret
    } // end of method 'Submission#0'::'<Factory>'

} // end of class Submission#0

