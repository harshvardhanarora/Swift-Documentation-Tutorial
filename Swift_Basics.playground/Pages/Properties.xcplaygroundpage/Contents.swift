/*
 -----------------------------------------------------------------------------------------------------
 |  Properties in Swift
 -----------------------------------------------------------------------------------------------------
*/

struct Vacation {
    let location: String
    let numberOfDays: Int
    var pictures: [String]
}

let summerVacation = Vacation(location: "Bali", numberOfDays: 10, pictures: [])
print(summerVacation.location)
// Output - Bali

// summerVacation.pictures.append("beach.png")
// Error because summerVacation is a constant

var springVacation = Vacation(location: "Paris", numberOfDays: 5, pictures: ["louvre.jpg"])
print(springVacation.pictures)
// Output - ["louvre.jpg"]
springVacation.pictures.append(contentsOf: ["eiffeltower.jpg", "sienne.jpg"])
print(springVacation.pictures)
// Output - ["louvre.jpg", "eiffeltower.jpg", "sienne.jpg"]

/*
 -----------------------------------------------------------------------------------------------------
 |  Lazy Properties in Swift
 -----------------------------------------------------------------------------------------------------
*/

class Lazy {
    var normalProperty: String = {
        let message = "This is a normal property"
        print(message)
        return message
    }()
    lazy var lazyProperty: String = {
        let message = "This is a lazy property"
        print(message)
        return message
    }()
}

let lazyClass = Lazy()
// Output - This is a normal property

print(lazyClass.lazyProperty)
/* Output -
This is a lazy property
This is a lazy property
*/

/*
 -----------------------------------------------------------------------------------------------------
 |  Computed Properties in Swift
 -----------------------------------------------------------------------------------------------------
*/

struct Person {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        firstName + " " + lastName
    }
}

var mark = Person(firstName: "Mark", lastName: "Dawson")
print(mark.fullName)
// Output - Mark Dawson

mark.lastName = "Turner"
print(mark.fullName)
// Output - Mark Turner


let abcd = "That's it for the day!"

struct Student {
    var firstName: String
    var lastName: String
    var age: Int
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set(newName) {
            let split = newName.split(separator: " ")
            firstName = String(split[0])
            lastName = String(split[1])
        }
    }
    
    var description: String {
        fullName + " is a student of age \(age)"
    }
}

var student = Student(firstName: "Harry", lastName: "Dawson", age: 15)
print(student.fullName)
// Output - Harry Dawson

student.fullName = "Harry Potter"
print(student.lastName)
// Output - Potter
