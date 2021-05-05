using System;

namespace ConsoleApp
{
	public class Person
	{
		public string FirstName { get; set; }
		public string  LastName { get; set; }

		private int age;
		public int Age
		{
			get
			{
				return age;
			}
			set
			{
				if (value < 0) throw new Exception();
				age = value;
			}
		}
		public override string ToString()
		{
			return $"{FirstName} {LastName}";
		}

	}
}
