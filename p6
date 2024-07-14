//Write a program that allows users to perform date and time calculations, such as finding the
//difference between two dates, adding or subtracting days, and displaying the current date and time
//in different formats.

using System;
class Program
{
static void Main(string[] args)
{
while (true)
{
Console.WriteLine(&quot;1. Find the difference between two dates&quot;);
Console.WriteLine(&quot;2. Add or subtract days from a date&quot;);
Console.WriteLine(&quot;3. Display the current date and time in different
formats&quot;);
Console.WriteLine(&quot;4. Exit&quot;);
Console.Write(&quot;Enter your choice: &quot;);
string choice = Console.ReadLine();
switch (choice)
{
case &quot;1&quot;:
FindDateDifference();
break;
case &quot;2&quot;:
AddSubtractDays();
break;
case &quot;3&quot;:
DisplayDateTimeFormats();
break;
case &quot;4&quot;:
Environment.Exit(0);
break;

default:
Console.WriteLine(&quot;Invalid choice. Please enter a valid option.&quot;);
break;
}
}
}
static void FindDateDifference()
{
Console.Write(&quot;Enter the first date (yyyy-mm-dd): &quot;);
DateTime date1 = DateTime.Parse(Console.ReadLine());
Console.Write(&quot;Enter the second date (yyyy-mm-dd): &quot;);
DateTime date2 = DateTime.Parse(Console.ReadLine());
TimeSpan difference = date2 - date1;
Console.WriteLine($&quot;Difference between the two dates: {difference.Days}
days&quot;);
}
static void AddSubtractDays()
{
Console.Write(&quot;Enter a date (yyyy-mm-dd): &quot;);
DateTime date = DateTime.Parse(Console.ReadLine());
Console.Write(&quot;Enter the number of days to add (positive) or subtract
(negative): &quot;);
int days = int.Parse(Console.ReadLine());
DateTime resultDate = date.AddDays(days);
Console.WriteLine($&quot;Resulting date: {resultDate.ToString(&quot;yyyy-MM-dd&quot;)}&quot;);
}
static void DisplayDateTimeFormats()
{
DateTime now = DateTime.Now;
Console.WriteLine(&quot;Current Date and Time in Different Formats:&quot;);
Console.WriteLine($&quot;Short date: {now.ToShortDateString()}&quot;);
Console.WriteLine($&quot;Long date: {now.ToLongDateString()}&quot;);
Console.WriteLine($&quot;Short time: {now.ToShortTimeString()}&quot;);
Console.WriteLine($&quot;Long time: {now.ToLongTimeString()}&quot;);
Console.WriteLine($&quot;Custom format (yyyy-MM-dd HH:mm:ss): {now.ToString(&quot;yyyy-
MM-dd HH:mm:ss&quot;)}&quot;);
}
}
