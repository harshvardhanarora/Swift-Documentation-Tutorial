/*
 -----------------------------------------------------------------------------------------------------
 |  For-In Loops
 -----------------------------------------------------------------------------------------------------
*/

let names = ["Max", "Charles", "Lewis", "Lando", "George"]
for name in names {
    print(name, terminator: " ")
}

print("")

let nameForNumber = [1: "Max", 16: "Charles", 44: "Lewos", 4: "Lando", 63: "George"]
for (number, name) in nameForNumber {
    print("Number for \(name) is \(number)")
}

for number in nameForNumber.keys {
    print(number, terminator: " ")
}

print("")

for name in nameForNumber.values {
    print(name, terminator: " ")
}

print("")

for number in 4...10 {
    print(number, terminator: " ")
}

print("")

for muptiplesOfTwo in stride(from: 0, to: 10, by: 2) {
    print(muptiplesOfTwo, terminator: " ") // Output 0 2 4 6 8
}

print("")

for muptiplesOfTwo in stride(from: 0, through: 10, by: 2) {
    print(muptiplesOfTwo, terminator: " ") // Output 0 2 4 6 8 10
}

print("")

/*
 -----------------------------------------------------------------------------------------------------
 |  While Loops
 -----------------------------------------------------------------------------------------------------
*/

var startNumber = 10
let maxNumber = 45

while startNumber <= maxNumber {
    startNumber += 6
}

print(startNumber) // Output - 46

startNumber = 10

repeat {
    startNumber += 6
} while startNumber <= maxNumber

print(startNumber)

/*
 -----------------------------------------------------------------------------------------------------
 |  If Statements
 -----------------------------------------------------------------------------------------------------
*/

let truth = true

if truth {
    print("This is true")
}

let pointsA = 55
let pointsB = 57

if pointsA > pointsB {
    print("A won")
} else if pointsA == pointsB {
    print("A equal B")
} else {
    print("B won")
}
// Output - B won

/*
 -----------------------------------------------------------------------------------------------------
 |  Switch Statements
 -----------------------------------------------------------------------------------------------------
*/

let number = 5

switch number {
    case 1: print("This is number one")
    case 2: print("This is number two")
    case 3: print("This is number three")
    case 4: print("This is number four")
    case 5: print("This is number five") // Output
    default: print("This number is greater than five")
}

switch number {
    case 1: print("This is number one")
    case 2: print("This is number two")
    case 3: print("This is number three")
//    case 4: // Error
    case 5: print("This is number five")
    default: print("This number is greater than five")
}

switch number {
    case 1, 2, 3, 4, 5: print("This number is between one and five") // Output
    default: print("This number is greater than five")
}

switch number {
    case 1...5: print("This number is between one and five") // Output
    default: print("This number is greater than five")
}

let graphPoint = (5, 0)

switch graphPoint {
    case (0, 0): print("Point is on the origin")
    case (_, 0): print("Point is on the X-Axis") // Output
    case (0, _): print("Point is on the Y-Axis")
    default: print("Point is not on the axis")
}

switch graphPoint {
    case (0, 0): print("Point is on the origin")
    case (let x, 0): print("Point is on the X-Axis with value \(x)") // Output
    case (0, let y): print("Point is on the Y-Axis with value \(y)")
    default: print("Point is not on the axis")
}
// Output - Point is on the X-Axis with value 5

switch graphPoint {
    case let (x, y) where x == 0 || y == 0: print("Point is on atleast one of the axis") // Ouput
    case let (x, y): print("Point is on x:\(x), y: \(y)") // This is not printed
}

switch graphPoint {
    case (0, 0): print("Point is on the origin")
    case (let distance, 0), (0, let distance): print("Point is at a distance of \(distance) from one of the axis") // Ouput
    default: print("Point is not on the axis")
}

/*
 -----------------------------------------------------------------------------------------------------
 |  Control Transfer Statements
 -----------------------------------------------------------------------------------------------------
*/

for number in 1...5 {
    if number == 3 { continue }
    print(number, terminator: " ") // Ouput - 1 2 4 5
}

print("")

for number in 1...5 {
    if number == 3 { break }
    print(number, terminator: " ") // Ouput - 1 2
}

print("")

for iteration in 1...5 {
    switch iteration {
        case 1: print("1", terminator: " ")
        case 2: print("2", terminator: " ")
        case 3: break
        case 4: print("4", terminator: " ")
        case 5: print("5", terminator: " ")
        default: print("Default", terminator: " ")
    }
}
// Output - 1 2 4 5

print("")

for iteration in 1...5 {
    switch iteration {
        case 1: print("1", terminator: " ")
        case 2: print("2", terminator: " ")
        case 3: fallthrough
        case 4: print("4", terminator: " ")
        case 5: print("5", terminator: " ")
        default: print("Default", terminator: " ")
    }
}
// Output - 1 2 4 4 5

print("")

var totalSum = 0

sumLoop: while totalSum < 100 {
    let roll = Int.random(in: 1...10)
    switch roll {
        case let x where x % 2 == 0: totalSum += x * x
        case 1, 3, 5, 9: break // Breaks out of switch
        case 7: continue sumLoop // Moves on the the next sumLoop iteration
        case 10: break sumLoop // Stops both switch and sumLoop
        default: break // Breaks out of switch
    }
}

print(totalSum)

/*
 -----------------------------------------------------------------------------------------------------
 |  Guard Statement
 -----------------------------------------------------------------------------------------------------
*/

let driverNumForName = ["Max": 1, "Charles": 16, "Lewos": 44, "Lando": 4, "George": 63]

func findDriverNumber(for name: String) {
    guard let number = driverNumForName[name] else {
        print("Driver not found")
        return
    }
    print(number)
}

findDriverNumber(for: "Ocon")

// Output - Driver not found
