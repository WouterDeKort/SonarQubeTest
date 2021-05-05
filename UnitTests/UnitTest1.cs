using ConsoleApp;
using System;
using Xunit;

namespace UnitTests
{
	public class UnitTest1
	{
		[Fact]
		public void TestSomething()
		{
			Person p = new Person { FirstName = "Wouter", LastName = "de Kort" };

			Assert.Equal("Wouter de Kort", p.ToString());

		}
	}
}
