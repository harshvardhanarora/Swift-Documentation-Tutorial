/*
 -----------------------------------------------------------------------------------------------------
 |  Creating Arrays
 -----------------------------------------------------------------------------------------------------
*/

var array0 = Array<Int>() // Empty Array
var array1: Array<Int> = [1]
var array2: [Int] = [2]
var array3 = [3] // Array Literal

print(type(of: array0)) // Output - Array<Int>
print(type(of: array1)) // Output - Array<Int>
print(type(of: array2)) // Output - Array<Int>
print(type(of: array3)) // Output - Array<Int>

var array4 = Array(repeating: 5.3, count: 3)
print(array4) // Output - [5.3, 5.3, 5.3]
print(type(of: array4)) // Output - Array<Double>

var array5 = array1 + array2
print(array5) // Output - [1, 2]

/*
 -----------------------------------------------------------------------------------------------------
 |  Accessing and Modifying Arrays
 -----------------------------------------------------------------------------------------------------
*/

var shoppingList = ["Milk", "Eggs", "Paint", "Fruits"]
print(shoppingList.count) // Output - 4
print(shoppingList.isEmpty) // Output - false

shoppingList.append("Vegetables")
shoppingList.append(contentsOf: ["Oil", "Shampoo", "Scrub"])
shoppingList += ["Pancake Mix"] // Added value should be of type Array<Element>

print(shoppingList.count) // Output - 9

print(shoppingList[5]) // Output - Oil
shoppingList[5] = "Hair Oil"
print(shoppingList[5]) // Output - Hair Oil

shoppingList[..<0] = ["Bread", "Chocolate"] // Inserts the sequence before the first element of the array
print(shoppingList[0...2]) // Output - ["Bread", "Chocolate", "Milk"]

shoppingList.insert(contentsOf: ["Butter", "Maple Syrup"], at: 0)
print(shoppingList[0...2]) // Output - ["Butter", "Maple Syrup", "Bread"]

let firstElement = shoppingList.remove(at: 0) // Remove method also returns the removed value
print(shoppingList[0...1]) // Output - ["Maple Syrup", "Bread"]

/*
 -----------------------------------------------------------------------------------------------------
 |  Iterating over Arrays
 -----------------------------------------------------------------------------------------------------
*/

for item in shoppingList {
    print(item, terminator: " ")
}

for (index, item) in shoppingList.enumerated() {
    print("Item \(index + 1): \(item)")
}

/*
 -----------------------------------------------------------------------------------------------------
 |  Creating Sets
 -----------------------------------------------------------------------------------------------------
*/

var set0 = Set<Int>()
var set1: Set<Int> = []
var set2: Set = [1, 2, 3, 4]

print(type(of: set0)) // Output - Set<Int>
print(type(of: set1)) // Output - Set<Int>
print(type(of: set2)) // Output - Set<Int>

var set3: Set = [1, 2, 3, 2, 1]
print(set3) // Output [1, 3, 2]

var shoppingListSet: Set = ["Milk", "Eggs", "Paint", "Fruits", "Eggs"]
print(shoppingListSet.count) // Output - 4

/*
 -----------------------------------------------------------------------------------------------------
 |  Accessing and Modifying Sets
 -----------------------------------------------------------------------------------------------------
*/

shoppingListSet.insert("Chocolate")
print(shoppingListSet.count) // Output - 5
shoppingListSet.insert("Milk") // Inserting an element that already exists
print(shoppingListSet.count) // Output - 5

shoppingListSet.remove("Paint")
print(shoppingListSet.contains("Paint")) // Oupput - false

/*
 -----------------------------------------------------------------------------------------------------
 |  Iterating over Sets
 -----------------------------------------------------------------------------------------------------
*/

for items in shoppingListSet.sorted() {
    print(items, terminator: " ") // Output - Chocolate Eggs Fruits Milk
}

print("")

/*
 -----------------------------------------------------------------------------------------------------
 |  Set Operations
 -----------------------------------------------------------------------------------------------------
*/

let colors: Set = ["Red", "Purple", "Orange"]
let fruits: Set = ["Apple", "Mango", "Orange"]

print(colors.union(fruits)) // Output - ["Mango", "Purple", "Orange", "Red", "Apple"]
print(colors.intersection(fruits)) // Output - ["Orange"]
print(colors.symmetricDifference(fruits)) // Output - ["Mango", "Purple", "Red", "Apple"]
print(colors.subtracting(fruits)) // Output - ["Purple", "Red"]

let rainbowColors: Set = ["Purple", "Blue", "Green", "Yellow", "Orange", "Red"]

print(colors.isSubset(of: rainbowColors)) // Output - true
print(rainbowColors.isSuperset(of: colors)) // Output - true
print(colors.isDisjoint(with: fruits)) // Output - false

/*
 -----------------------------------------------------------------------------------------------------
 |  Creating Dictionaries
 -----------------------------------------------------------------------------------------------------
*/

let dict0 = Dictionary<Int, String>()
let dict1: Dictionary<Int, String> = [:]
let dict2: [Int: String] = [:]
let dict3 = [1: "1"] // Dictionary Literal

print(type(of: dict0)) // Output - Dictionary<Int, String>
print(type(of: dict1)) // Output - Dictionary<Int, String>
print(type(of: dict2)) // Output - Dictionary<Int, String>
print(type(of: dict3)) // Output - Dictionary<Int, String>


/*
 -----------------------------------------------------------------------------------------------------
 |  Accessing and Modifying Dictionaries
 -----------------------------------------------------------------------------------------------------
*/

var numbers = [
    1: "One",
    2: "Two",
    4: "Four",
    7: "Seven",
    5: "Five"
]

print(numbers.count) // Output - 5
print(numbers[5]) // Output - Optional("Five")

numbers[9] = "Nine"
let oldNum = numbers.updateValue("Eleven", forKey: 11)

numbers[2] = nil // Removes the key-value pair for key - 2
numbers.removeValue(forKey: 4)
print(numbers.count) // Output - 5

/*
 -----------------------------------------------------------------------------------------------------
 |  Iterating over Dictionaries
 -----------------------------------------------------------------------------------------------------
*/

for (numberInt, numberString) in numbers {
    print("String for \(numberInt) is \(numberString)")
}

for numberInt in numbers.keys {
    print(numberInt, terminator: " ")
}

print("")

for numberString in numbers.values {
    print(numberString, terminator: " ")
}
