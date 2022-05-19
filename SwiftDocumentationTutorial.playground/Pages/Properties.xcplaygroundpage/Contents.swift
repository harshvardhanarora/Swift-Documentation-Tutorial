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

print("That's it for the day!")
