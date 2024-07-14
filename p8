//Write a program to parse and display specific book details from the XML file.
using System;
using System.Xml;

class Program
{
static void Main(string[] args)
{
string fileName = &quot;BooksData/books.xml&quot;;

// Load the XML document
XmlDocument xmlDoc = new XmlDocument();
xmlDoc.Load(fileName);

// Menu-driven loop
bool exit = false;
while (!exit)
{
// Display menu options
Console.WriteLine(&quot;\nMenu:&quot;);
Console.WriteLine(&quot;1. List all book titles&quot;);
Console.WriteLine(&quot;2. Display details of a book by title&quot;);
Console.WriteLine(&quot;3. Exit&quot;);
Console.Write(&quot;Enter option: &quot;);

// Get user input
int option;
while (!int.TryParse(Console.ReadLine(), out option) || option &lt; 1 || option &gt; 3)
{
Console.WriteLine(&quot;Invalid option. Please enter a number between 1 and 3.&quot;);
Console.Write(&quot;Enter option: &quot;);
}

// Perform action based on user input
switch (option)
{
case 1:
ListAllBookTitles(xmlDoc);
break;
case 2:
DisplayBookDetailsByTitle(xmlDoc);
break;
case 3:

exit = true;
Console.WriteLine(&quot;Exiting program...&quot;);
break;
}
}
}

static void ListAllBookTitles(XmlDocument xmlDoc)
{
// Display all book titles
Console.WriteLine(&quot;\nList of Book Titles:&quot;);
XmlNodeList bookNodes = xmlDoc.SelectNodes(&quot;/Books/Book&quot;);
foreach (XmlNode bookNode in bookNodes)
{
string title = bookNode.SelectSingleNode(&quot;Title&quot;).InnerText;
Console.WriteLine($&quot;- {title}&quot;);
}
}

static void DisplayBookDetailsByTitle(XmlDocument xmlDoc)
{
// Get book title from the user
Console.Write(&quot;Enter book title: &quot;);
string searchTitle = Console.ReadLine();

// Search for the book by title
XmlNode bookNode = xmlDoc.SelectSingleNode($&quot;/Books/Book[Title=&#39;{searchTitle}&#39;]&quot;);
if (bookNode != null)
{
// If book is found, display its details
string title = bookNode.SelectSingleNode(&quot;Title&quot;).InnerText;
string author = bookNode.SelectSingleNode(&quot;Author&quot;).InnerText;
string year = bookNode.SelectSingleNode(&quot;Year&quot;).InnerText;

Console.WriteLine($&quot;Book Details:&quot;);
Console.WriteLine($&quot;Title: {title}, Author: {author}, Year: {year}&quot;);
}
else
{
// If book is not found, display a message
Console.WriteLine($&quot;Book with title &#39;{searchTitle}&#39; not found.&quot;);
}
