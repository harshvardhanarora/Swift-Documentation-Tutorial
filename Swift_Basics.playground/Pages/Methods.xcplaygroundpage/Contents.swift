/*
 -----------------------------------------------------------------------------------------------------
 |  Instance Methods
 -----------------------------------------------------------------------------------------------------
*/

class Company {
    var numberOfEmployees = 0
    
    func addSomeEmployees(number: Int) {
        numberOfEmployees += number
    }
    
    func newNumberOfEmployees(numberOfEmployees: Int) {
        self.numberOfEmployees = numberOfEmployees
    }
}

struct School {
    var numberOfStudents = 0
    
    mutating func addSomeStudents(students: Int) {
        numberOfStudents += students
    }
}

struct Aquarium {
    var numberOfFish: Int
    var someRandomFish = Int.random(in: 1...10)
    
    mutating func newNumberOfFish(fishes: Int) {
        self = Aquarium(numberOfFish: fishes)
    }
}

var aquarium = Aquarium(numberOfFish: 10)
print(aquarium.someRandomFish)
aquarium.newNumberOfFish(fishes: 15)
print(aquarium.someRandomFish)

/*
 -----------------------------------------------------------------------------------------------------
 |  Type Methods
 -----------------------------------------------------------------------------------------------------
*/

struct TestStruct {
    static func typeMethod() {
        // Do something here
    }
}

class TestClass {
    static func typeMethod1() {
        // Do something here
    }
    
    class func typeMethod2() {
        // Do something here
    }
}

class MoneyExchange {
    static var rateMultiplier = 50.0
    
    static func changeMultiplier(rateMultiplier: Double) {
        self.rateMultiplier = rateMultiplier
    }
    
    func calculateMoney(forAmount: Double) -> Double {
        return forAmount * MoneyExchange.rateMultiplier
    }
}

let exchanger = MoneyExchange()
print(exchanger.calculateMoney(forAmount: 10))
// Output - 500.0

MoneyExchange.changeMultiplier(rateMultiplier: 100)
print(exchanger.calculateMoney(forAmount: 10))
// Output - 1000.0

