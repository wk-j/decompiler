.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit P
    extends [System.Private.CoreLib]System.Object
{
    // Nested Types
    .class nested private auto ansi sealed beforefieldinit '<H>d__1'
        extends [System.Private.CoreLib]System.Object
        implements [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine
    {
        .custom instance void [System.Private.CoreLib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
            01 00 00 00
        )
        // Fields
        .field public int32 '<>1__state'
        .field public valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> '<>t__builder'
        .field public class P '<>4__this'
        .field private int32 '<>s__1'
        .field private valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> '<>u__1'

        // Methods
        .method public hidebysig specialname rtspecialname 
            instance void .ctor () cil managed 
        {
            // Method begins at RVA 0x20a7
            // Code size 8 (0x8)
            .maxstack 8

            IL_0000: ldarg.0
            IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
            IL_0006: nop
            IL_0007: ret
        } // end of method '<H>d__1'::.ctor

        .method private final hidebysig newslot virtual 
            instance void MoveNext () cil managed 
        {
            .override method instance void [System.Private.CoreLib]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext()
            // Method begins at RVA 0x20b0
            // Code size 169 (0xa9)
            .maxstack 3
            .locals init (
                [0] int32,
                [1] int32,
                [2] valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>,
                [3] class P/'<H>d__1',
                [4] class [System.Private.CoreLib]System.Exception
            )

            IL_0000: ldarg.0
            IL_0001: ldfld int32 P/'<H>d__1'::'<>1__state'
            IL_0006: stloc.0
            .try
            {
                IL_0007: ldloc.0
                IL_0008: brfalse.s IL_000c

                IL_000a: br.s IL_000e

                IL_000c: br.s IL_0047

                IL_000e: ldc.i4.1
                IL_000f: call class [System.Private.CoreLib]System.Threading.Tasks.Task`1<!!0> [System.Private.CoreLib]System.Threading.Tasks.Task::FromResult<int32>(!!0)
                IL_0014: callvirt instance valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Private.CoreLib]System.Threading.Tasks.Task`1<int32>::GetAwaiter()
                IL_0019: stloc.2
                IL_001a: ldloca.s 2
                IL_001c: call instance bool valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::get_IsCompleted()
                IL_0021: brtrue.s IL_0063

                IL_0023: ldarg.0
                IL_0024: ldc.i4.0
                IL_0025: dup
                IL_0026: stloc.0
                IL_0027: stfld int32 P/'<H>d__1'::'<>1__state'
                IL_002c: ldarg.0
                IL_002d: ldloc.2
                IL_002e: stfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> P/'<H>d__1'::'<>u__1'
                IL_0033: ldarg.0
                IL_0034: stloc.3
                IL_0035: ldarg.0
                IL_0036: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
                IL_003b: ldloca.s 2
                IL_003d: ldloca.s 3
                IL_003f: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::AwaitUnsafeOnCompleted<valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>, class P/'<H>d__1'>(!!0&, !!1&)
                IL_0044: nop
                IL_0045: leave.s IL_00a8

                IL_0047: ldarg.0
                IL_0048: ldfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> P/'<H>d__1'::'<>u__1'
                IL_004d: stloc.2
                IL_004e: ldarg.0
                IL_004f: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32> P/'<H>d__1'::'<>u__1'
                IL_0054: initobj valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>
                IL_005a: ldarg.0
                IL_005b: ldc.i4.m1
                IL_005c: dup
                IL_005d: stloc.0
                IL_005e: stfld int32 P/'<H>d__1'::'<>1__state'

                IL_0063: ldarg.0
                IL_0064: ldloca.s 2
                IL_0066: call instance !0 valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::GetResult()
                IL_006b: stfld int32 P/'<H>d__1'::'<>s__1'
                IL_0070: ldarg.0
                IL_0071: ldfld int32 P/'<H>d__1'::'<>s__1'
                IL_0076: stloc.1
                IL_0077: leave.s IL_0093
            } // end .try
            catch [System.Private.CoreLib]System.Exception
            {
                IL_0079: stloc.s 4
                IL_007b: ldarg.0
                IL_007c: ldc.i4.s -2
                IL_007e: stfld int32 P/'<H>d__1'::'<>1__state'
                IL_0083: ldarg.0
                IL_0084: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
                IL_0089: ldloc.s 4
                IL_008b: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::SetException(class [System.Private.CoreLib]System.Exception)
                IL_0090: nop
                IL_0091: leave.s IL_00a8
            } // end handler

            IL_0093: ldarg.0
            IL_0094: ldc.i4.s -2
            IL_0096: stfld int32 P/'<H>d__1'::'<>1__state'
            IL_009b: ldarg.0
            IL_009c: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
            IL_00a1: ldloc.1
            IL_00a2: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::SetResult(!0)
            IL_00a7: nop

            IL_00a8: ret
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
            // Method begins at RVA 0x2178
            // Code size 1 (0x1)
            .maxstack 8

            IL_0000: ret
        } // end of method '<H>d__1'::SetStateMachine

    } // end of class <H>d__1


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

    .method private hidebysig 
        instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<int32> H () cil managed 
    {
        .custom instance void [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Private.CoreLib]System.Type) = (
            01 00 09 50 2b 3c 48 3e 64 5f 5f 31 00 00
        )
        .custom instance void [System.Private.CoreLib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = (
            01 00 00 00
        )
        // Method begins at RVA 0x2060
        // Code size 59 (0x3b)
        .maxstack 2
        .locals init (
            [0] class P/'<H>d__1',
            [1] valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>
        )

        IL_0000: newobj instance void P/'<H>d__1'::.ctor()
        IL_0005: stloc.0
        IL_0006: ldloc.0
        IL_0007: ldarg.0
        IL_0008: stfld class P P/'<H>d__1'::'<>4__this'
        IL_000d: ldloc.0
        IL_000e: call valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::Create()
        IL_0013: stfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
        IL_0018: ldloc.0
        IL_0019: ldc.i4.m1
        IL_001a: stfld int32 P/'<H>d__1'::'<>1__state'
        IL_001f: ldloc.0
        IL_0020: ldfld valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
        IL_0025: stloc.1
        IL_0026: ldloca.s 1
        IL_0028: ldloca.s 0
        IL_002a: call instance void valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::Start<class P/'<H>d__1'>(!!0&)
        IL_002f: ldloc.0
        IL_0030: ldflda valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32> P/'<H>d__1'::'<>t__builder'
        IL_0035: call instance class [System.Private.CoreLib]System.Threading.Tasks.Task`1<!0> valuetype [System.Private.CoreLib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<int32>::get_Task()
        IL_003a: ret
    } // end of method P::H

    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        // Method begins at RVA 0x20a7
        // Code size 8 (0x8)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
        IL_0006: nop
        IL_0007: ret
    } // end of method P::.ctor

} // end of class P

