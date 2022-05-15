/*
 -----------------------------------------------------------------------------------------------------
 |  Structures and Classes
 -----------------------------------------------------------------------------------------------------
*/

let animalOneType = "Dog"
let animalOneName = "Marco"
let animalOneWeight = 45

let animalTwoType = "Cat"
let animalTwoName = "Ruby"
let animalTwoWeight = 24.5

struct Animal {
    let type: String
    let name: String
    let weight: Double
}

let animalOne = Animal(type: "Dog", name: "Marco", weight: 45.0)
let animalTwo = Animal.init(type: "Cat", name: "Ruby", weight: 24.5)
print(animalOne.name)
// Output - Marco

class Car {
    let name: String
    let modelYear: Int
    let weight: Double
    
    init(name: String, modelYear: Int, weight: Double) {
        self.name = name
        self.modelYear = modelYear
        self.weight = weight
    }
}

let defender = Car(name: "Defender", modelYear: 2020, weight: 2345.6)
print(defender.name)
// Output - Defender

struct DimensionStruct {
    var width: Int
    var height: Int
    
    init(side: Int) {
        self.width = side
        self.height = side
    }
}

class DimensionClass {
    var width: Int
    var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

let dimensionStructOne = DimensionStruct(side: 5)
let dimensionClassOne = DimensionClass(width: 6, height: 7)

var dimensionStructTwo = dimensionStructOne
var dimensionClassTwo = dimensionClassOne

dimensionStructTwo.width = 10
dimensionClassTwo.width = 10

print(dimensionStructOne.width)
// Output - 5
print(dimensionClassOne.width)
// Output - 10
