.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit P
    extends [System.Private.CoreLib]System.Object
{
    // Nested Types
    .class nested private auto ansi sealed beforefieldinit '<H>d__1'
        extends [System.Private.CoreLib]System.ValueType
        implements [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine
    {
        .custom instance void [System.Private.CoreLib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
            01 00 00 00
        )
        // Fields
        .field public int32 '<>1__state'
        .field public valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> '<>t__builder'
        .field private valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> '<>u__1'

        // Methods
        .method private final hidebysig newslot virtual 
            instance void MoveNext () cil managed 
        {
            .override method instance void [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext()
            // Method begins at RVA 0x20a4
            // Code size 145 (0x91)
            .maxstack 3
            .locals init (
                [0] int32,
                [1] int32,
                [2] valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>,
                [3] class [System.Private.CoreLib]System.Exception
            )

            IL_0000: ldarg.0
            IL_0001: ldfld int32 P/'<H>d__1'::'<>1__state'
            IL_0006: stloc.0
            .try
            {
                IL_0007: ldloc.0
                IL_0008: brfalse.s IL_003f

                IL_000a: ldc.i4.1
                IL_000b: call class [System.Private.CoreLib]System.Threading.Tasks.Task`1<!!0> [System.Private.CoreLib]System.Threading.Tasks.Task::FromResult<int32>(!!0)
                IL_0010: callvirt instance valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Private.CoreLib]System.Threading.Tasks.Task`1<int32>::GetAwaiter()
                IL_0015: stloc.2
                IL_0016: ldloca.s 2
                IL_0018: call instance bool valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::get_IsCompleted()
                IL_001d: brtrue.s IL_005b

                IL_001f: ldarg.0
                IL_0020: ldc.i4.0
                IL_0021: dup
                IL_0022: stloc.0
                IL_0023: stfld int32 P/'<H>d__1'::'<>1__state'
                IL_0028: ldarg.0
                IL_0029: ldloc.2
                IL_002a: stfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> P/'<H>d__1'::'<>u__1'
                IL_002f: ldarg.0
                IL_0030: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
                IL_0035: ldloca.s 2
                IL_0037: ldarg.0
                IL_0038: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::AwaitUnsafeOnCompleted<valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>, valuetype P/'<H>d__1'>(!!0&, !!1&)
                IL_003d: leave.s IL_0090

                IL_003f: ldarg.0
                IL_0040: ldfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> P/'<H>d__1'::'<>u__1'
                IL_0045: stloc.2
                IL_0046: ldarg.0
                IL_0047: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> P/'<H>d__1'::'<>u__1'
                IL_004c: initobj valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>
                IL_0052: ldarg.0
                IL_0053: ldc.i4.m1
                IL_0054: dup
                IL_0055: stloc.0
                IL_0056: stfld int32 P/'<H>d__1'::'<>1__state'

                IL_005b: ldloca.s 2
                IL_005d: call instance !0 valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::GetResult()
                IL_0062: stloc.1
                IL_0063: leave.s IL_007c
            } // end .try
            catch [System.Private.CoreLib]System.Exception
            {
                IL_0065: stloc.3
                IL_0066: ldarg.0
                IL_0067: ldc.i4.s -2
                IL_0069: stfld int32 P/'<H>d__1'::'<>1__state'
                IL_006e: ldarg.0
                IL_006f: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
                IL_0074: ldloc.3
                IL_0075: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::SetException(class [System.Private.CoreLib]System.Exception)
                IL_007a: leave.s IL_0090
            } // end handler

            IL_007c: ldarg.0
            IL_007d: ldc.i4.s -2
            IL_007f: stfld int32 P/'<H>d__1'::'<>1__state'
            IL_0084: ldarg.0
            IL_0085: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
            IL_008a: ldloc.1
            IL_008b: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::SetResult(!0)

            IL_0090: ret
        } // end of method '<H>d__1'::MoveNext

        .method private final hidebysig newslot virtual 
            instance void SetStateMachine (
                class [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine
            ) cil managed 
        {
            .custom instance void [System.Private.CoreLib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
                01 00 00 00
            )
            .override method instance void [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine(class [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine)
            // Method begins at RVA 0x2154
            // Code size 13 (0xd)
            .maxstack 8

            IL_0000: ldarg.0
            IL_0001: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
            IL_0006: ldarg.1
            IL_0007: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::SetStateMachine(class [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine)
            IL_000c: ret
        } // end of method '<H>d__1'::SetStateMachine

    } // end of class <H>d__1


    // Methods
    .method private hidebysig 
        instance void Main () cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 11 (0xb)
        .maxstack 8

        IL_0000: ldstr "Hello"
        IL_0005: call void [System.Console]System.Console::WriteLine(string)
        IL_000a: ret
    } // end of method P::Main

    .method private hidebysig 
        instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<int32> H () cil managed 
    {
        .custom instance void [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Private.CoreLib]System.Type) = (
            01 00 09 50 2b 3c 48 3e 64 5f 5f 31 00 00
        )
        // Method begins at RVA 0x205c
        // Code size 49 (0x31)
        .maxstack 2
        .locals init (
            [0] valuetype P/'<H>d__1',
            [1] valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>
        )

        IL_0000: ldloca.s 0
        IL_0002: call valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::Create()
        IL_0007: stfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
        IL_000c: ldloca.s 0
        IL_000e: ldc.i4.m1
        IL_000f: stfld int32 P/'<H>d__1'::'<>1__state'
        IL_0014: ldloc.0
        IL_0015: ldfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
        IL_001a: stloc.1
        IL_001b: ldloca.s 1
        IL_001d: ldloca.s 0
        IL_001f: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::Start<valuetype P/'<H>d__1'>(!!0&)
        IL_0024: ldloca.s 0
        IL_0026: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
        IL_002b: call instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::get_Task()
        IL_0030: ret
    } // end of method P::H

    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        // Method begins at RVA 0x2099
        // Code size 7 (0x7)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
        IL_0006: ret
    } // end of method P::.ctor

} // end of class P

