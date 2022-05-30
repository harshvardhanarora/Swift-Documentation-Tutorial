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

/*
 -----------------------------------------------------------------------------------------------------
 |  Property Observers
 -----------------------------------------------------------------------------------------------------
*/

struct Employee {
    var name: String {
        willSet {
            print("New name will be \(newValue)")
        }
        didSet {
            print("Previous name was \(oldValue)")
        }
    }
}

var paige = Employee(name: "Paige Hudson")

paige.name = "Paige Holmes"
/* Output -
 	New name will be Paige Holmes
 	Previous name was Paige Hudson
*/

print("--------------------------------------------------------")

class ParentClass {
    var firstName: String
    var lastName: String
    var fullName: String {
        get {
            firstName + " " + lastName
        }
        set {
            let split = newValue.split(separator: " ")
            firstName = String(split[0])
            lastName = String(split[1])
        }
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class SubClass: ParentClass {
    override var lastName: String {
        willSet {
            print("Last name will be changed to \(newValue)")
        }
    }
    
    override var fullName: String {
        willSet {
            print("Full name will be changed to \(newValue)")
        }
    }
}

let subClass = SubClass(firstName: "Lucy", lastName: "Banks")
subClass.fullName = "Sherlock Holmes"
/* Output -
 	Full name will be changed to Sherlock Holmes
 	Last name will be changed to Holmes
*/

/*
 -----------------------------------------------------------------------------------------------------
 |  Type Properties
 -----------------------------------------------------------------------------------------------------
*/

struct Pet {
    static var description = "This is a Pet"
    
    let name: String
}

let cat = Pet(name: "cat")
let dog = Pet(name: "dog")

print(cat.name)
print(dog.name)
print(Pet.description)
/*
 Output -
 	cat
 	dog
 	This is a Pet
*/

Pet.description = "This is somebody's pet"
print(Pet.description)
// Output - This is somebody's pet
