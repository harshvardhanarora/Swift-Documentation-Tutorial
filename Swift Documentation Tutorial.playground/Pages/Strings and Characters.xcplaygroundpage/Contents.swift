/*
 -----------------------------------------------------------------------------------------------------
 |  String Literals
 -----------------------------------------------------------------------------------------------------
*/

let stringLiteral = "This is a string literal"
// Type of stringLiteral is inferred as String

let multiLineLiteral = """
    We can also have multi-line string literals.
    This line break will also appear in string's value.
    We can also chose to not have a line break using \
    which allows us to organise a string in a better way.
        The space behind the closing marks tells Swift to ignore that for all lines.
    """

print(multiLineLiteral)

/*
 -----------------------------------------------------------------------------------------------------
 |  Initializing empty String
 -----------------------------------------------------------------------------------------------------
*/

let emptyStringLiteral = "" // ""
let emptyString = String()  // ""

/*
 -----------------------------------------------------------------------------------------------------
 |  String Mutability
 -----------------------------------------------------------------------------------------------------
*/

var firstName = "Max"
let lastName = "Verstappen"
firstName += " " + lastName
print(firstName)

// lastName = firstName + lastName
// Throws an error because lastName is a constant

let multiLineString = """
    A
    B

    """
// Include a line space in multi-line strings to create a line break
let characterC: Character = "C"
// Character does not have string literal
print(multiLineString + String(characterC))

/*
 -----------------------------------------------------------------------------------------------------
 |  Iterating over Strings
 -----------------------------------------------------------------------------------------------------
*/

let driver = "Lewis Hamilton"
for character in driver {
    print(character, terminator: " ")
    // The output will be - L e w i s  H a m i l t o n
    // By default, print function creates a line break at the end
    // Terminator argument allows us to chose what we want to do at the end of a print statement
}

print("") // Only to shift to next line in console

/*
 -----------------------------------------------------------------------------------------------------
 |  String Interpolation
 -----------------------------------------------------------------------------------------------------
*/

let points = 395.5
let statement = "Max Verstappen accumulated \(points) points in the F1 2021 season"
print(statement)

/*
 -----------------------------------------------------------------------------------------------------
 |  Unicode and Extended Grapheme Clusters
 -----------------------------------------------------------------------------------------------------
*/

let acuteE: Character = "\u{E9}"
let combineE: Character = "\u{65}\u{301}"

var cafe = "cafe"
print(cafe.count)
// Output - 4
cafe += "\u{301}"
// Output - latté
print(cafe.count)
// Output - 4

/*
 -----------------------------------------------------------------------------------------------------
 |  Accessing a String
 -----------------------------------------------------------------------------------------------------
*/

let helloWorld = "Hello World!"
var startIndex = helloWorld.startIndex
print(helloWorld[startIndex])
// Output - H

var endIndex = helloWorld.endIndex
 print(helloWorld[endIndex])
// Throws an error because the endIndex is after the last character

endIndex = helloWorld.index(before: endIndex)
print(helloWorld[endIndex])
// Output - !

let fifthIndex = helloWorld.index(startIndex, offsetBy: 4)
print(helloWorld[fifthIndex])
// Output - o

for index in helloWorld.indices {
    print(helloWorld[index], terminator: "")
}

print("") // Only to shift to next line in console

/*
 -----------------------------------------------------------------------------------------------------
 |  Modifying a String
 -----------------------------------------------------------------------------------------------------
*/

var hello = "Hello"

hello.insert("!", at: hello.endIndex)
print(hello)
// Output - Hello!

hello.insert(contentsOf: " World", at: hello.index(hello.startIndex, offsetBy: 5))
print(hello)
// Output - Hello World!

hello.remove(at: hello.index(before: hello.endIndex))
print(hello)
// Output - Hello World

let range = hello.startIndex...hello.index(hello.startIndex, offsetBy: 5)
hello.removeSubrange(range)
print(hello)
// Output - World

/*
 -----------------------------------------------------------------------------------------------------
 |  Substrings
 -----------------------------------------------------------------------------------------------------
*/

let helloWorldAgain = "Hello, World!"
let helloIndex = helloWorldAgain.firstIndex(of: ",") ?? helloWorldAgain.endIndex
let helloSubstring = helloWorldAgain[..<helloIndex]
// helloSubstring is of type String.Subsequence
print(helloSubstring)
// Output - Hello
let helloString = String(helloSubstring)

/*
 -----------------------------------------------------------------------------------------------------
 |  Comparing Strings
 -----------------------------------------------------------------------------------------------------
*/

let acuteLatte = "Latt\u{E9}"
let combinedLatte = "Latt\u{65}\u{301}"
print(acuteLatte == combinedLatte)
// Output - True

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
print(latinCapitalLetterA == cyrillicCapitalLetterA)
// Output - False

let ferrariDriver = "Charles Leclerc"
print(ferrariDriver.hasPrefix("Charles"))
// Output - True

print(ferrariDriver.hasSuffix(" Leclerc"))
// Output - True
