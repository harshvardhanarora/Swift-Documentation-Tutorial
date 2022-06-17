/*
 -----------------------------------------------------------------------------------------------------
 |  Subscripts in Swift
 -----------------------------------------------------------------------------------------------------
*/

struct Stadium {
    let numberOfLegsPerPerson = 2
    
    subscript(numberOfPeople: Int) -> Int {
        numberOfLegsPerPerson * numberOfPeople
    }
}

let stadium = Stadium()
print(stadium[5])
// Output - 10

struct SomeStruct {
    subscript(someInput: String) -> Int {
        get {
            return someInput.count
        }
        set(someNewValue) {
            // Do something here
        }
    }
}

/*
 -----------------------------------------------------------------------------------------------------
 |  Multiple Parameters
 -----------------------------------------------------------------------------------------------------
*/

struct Area {
    subscript(length: Double, width: Double) -> Double {
        return length * width
    }
}

let area = Area()
print(area[4.5, 2])
// Output - 9.0

/*
 -----------------------------------------------------------------------------------------------------
 |  Subscript Overloading
 -----------------------------------------------------------------------------------------------------
*/

struct Overloading {
    subscript(someInteger: Int) -> String {
        return "Hello"
    }
    subscript(someString: String) -> String {
        return "Hello again"
    }
    subscript(someString: String) -> Int {
        return 5
    }
}

let overloading = Overloading()
print(overloading[4])
// Output - Hello
let stringOutput: String = overloading["4"]
print(stringOutput)
// Output - Hello again
let intOutput: Int = overloading["4"]
print(intOutput)
// Output - 5

/*
 -----------------------------------------------------------------------------------------------------
 |  Type Subscript
 -----------------------------------------------------------------------------------------------------
*/

struct Week {
    enum Day: Int {
        case mon = 1, tue, wed, thu, fri, sat, sun
    }
    static subscript(dayOfWeek: Int) -> Day {
        Day(rawValue: dayOfWeek)!
    }
}

print(Week[5])
// Ouptut - fri
// print(Week[8])
// Error
