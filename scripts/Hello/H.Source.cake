using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading.Tasks;

public sealed class Submission#0
{
	public class P
	{
		private void Main()
		{
			Console.WriteLine("Hello");
		}
	}

	[StructLayout(LayoutKind.Auto)]
	public struct <<Initialize>>d__0 : IAsyncStateMachine
	{
		public int <>1__state;

		public AsyncTaskMethodBuilder<object> <>t__builder;

		private void MoveNext()
		{
			object result;
			try
			{
				Console.WriteLine("Hello, world!");
				result = null;
			}
			catch (Exception exception)
			{
				<>1__state = -2;
				<>t__builder.SetException(exception);
				return;
			}
			<>1__state = -2;
			<>t__builder.SetResult(result);
		}

		void IAsyncStateMachine.MoveNext()
		{
			//ILSpy generated this explicit interface implementation from .override directive in MoveNext
			this.MoveNext();
		}

		[DebuggerHidden]
		private void SetStateMachine(IAsyncStateMachine stateMachine)
		{
			<>t__builder.SetStateMachine(stateMachine);
		}

		void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
		{
			//ILSpy generated this explicit interface implementation from .override directive in SetStateMachine
			this.SetStateMachine(stateMachine);
		}
	}

	public async Task<object> <Initialize>()
	{
		Console.WriteLine("Hello, world!");
		return null;
	}

	public Submission#0(object[] submissionArray)
	{
		submissionArray[1] = this;
	}

	public static Task<object> <Factory>(object[] submissionArray)
	{
		return new Submission#0(submissionArray).<Initialize>();
	}
}
