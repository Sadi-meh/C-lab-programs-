//Create a program that demonstrates the use of a dictionary to store and retrieve key-value pairs.

using System;
using System.Collections.Generic;

class Program
{
static void Main(string[] args)
{
// Create a dictionary to store student names and their corresponding ages
Dictionary&lt;string, int&gt; studentAges = new Dictionary&lt;string, int&gt;();

// Add some key-value pairs to the dictionary
studentAges[&quot;Alice&quot;] = 20;
studentAges[&quot;Bob&quot;] = 22;
studentAges[&quot;Charlie&quot;] = 21;

// Access values by key
Console.WriteLine(&quot;Age of Alice: &quot; + studentAges[&quot;Alice&quot;]);
Console.WriteLine(&quot;Age of Bob: &quot; + studentAges[&quot;Bob&quot;]);
Console.WriteLine(&quot;Age of Charlie: &quot; + studentAges[&quot;Charlie&quot;]);

// Check if a key exists in the dictionary
string name = &quot;David&quot;;
if (studentAges.ContainsKey(name))

{
Console.WriteLine(&quot;Age of &quot; + name + &quot;: &quot; + studentAges[name]);
}
else
{
Console.WriteLine(name + &quot; not found in the dictionary.&quot;);
}

// Iterate over all key-value pairs in the dictionary
Console.WriteLine(&quot;\nAll students and their ages:&quot;);
foreach (KeyValuePair&lt;string, int&gt; kvp in studentAges)
{
Console.WriteLine(kvp.Key + &quot;: &quot; + kvp.Value);
}
}
}
