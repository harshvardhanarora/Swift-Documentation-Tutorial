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
