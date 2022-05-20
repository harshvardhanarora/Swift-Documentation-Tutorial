/*
 -----------------------------------------------------------------------------------------------------
 |  Defining Enums
 -----------------------------------------------------------------------------------------------------
*/

enum Color {
    case red
    case blue
    case green
    case yellow
    case purple
}

enum Vehicle {
    case bike, car, bus, truck
}

var personalVehicle = Vehicle.bike
let officeVehicle = Vehicle.car

personalVehicle = .truck

/*
 -----------------------------------------------------------------------------------------------------
 |  Comparing Enums
 -----------------------------------------------------------------------------------------------------
*/

let firstVehicle = Vehicle.car
let secondVehicle = Vehicle.car
print(firstVehicle == secondVehicle)
// Output: true

func doSomething(with vehicle: Vehicle) {
    if vehicle == .bike {
        print("This is a bike")
    } else if vehicle == .car {
        print("This is a car")
    } else if vehicle == .bus {
        print("This is a bus")
    } else if vehicle == .truck {
        print("This is a truck")
    }
}

func doSomethingBetter(with vehicle: Vehicle) {
    switch vehicle {
    case .bike:
        print("This is a bike")
    case .car:
        print("This is a car")
    case .bus:
        print("This is a bus")
    case .truck:
        print("This is a truck")
    }
}

enum Direction: CaseIterable {
    case north, south, east, west
}

let allDirectionsCount = Direction.allCases.count
print(allDirectionsCount)
// Output - 4

/*
 -----------------------------------------------------------------------------------------------------
 |  Associated Values
 -----------------------------------------------------------------------------------------------------
*/

enum Travel {
    case car(distance: Int)
    case train(Int)
    case flight(airportName: String, travelHours: Double)
}

let travelByCar = Travel.car(distance: 560)
let travelByTrain = Travel.train(500)
let travelByFlight = Travel.flight(airportName: "Heathrow", travelHours: 1.5)

func checkTravel(for travel: Travel) {
    switch travel {
    case .car:
        print("Travelling by Car")
    case .train(let distance):
        print("Travelling \(distance)km by Train")
    case .flight(airportName: var airportName, _):
        airportName += "Airport"
        print("Travelling by Flight from \(airportName)")
    }
}

/*
 -----------------------------------------------------------------------------------------------------
 |  Raw Values
 -----------------------------------------------------------------------------------------------------
*/

enum RomanNumber: String {
    case one = "I"
    case two = "II"
    case three = "III"
    case four = "IV"
}

let romanTwo = RomanNumber.two
print(romanTwo.rawValue)
// Output - II

enum Number: Int {
    case one = 1
    case two
    case three
    case four
}

let numberThree = Number.three
print(numberThree.rawValue)
// Output - 3

let romanFour = RomanNumber(rawValue: "IV")!
print(romanFour.rawValue)
// Output - IV

let numberOne = Number.one
let anotherNumberOne = Number.one
print(numberOne == anotherNumberOne)

enum Animal: Equatable {
    case land(name: String, numberOfLegs: Int)
    case water(name: String, numberOfFins: Int)
    case air(name: String, numberOfWings: Int)
}

let horse = Animal.land(name: "Horse", numberOfLegs: 4)
let zebra = Animal.land(name: "Zebra", numberOfLegs: 4)

print(horse == zebra)


