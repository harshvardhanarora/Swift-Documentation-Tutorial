/*
 -----------------------------------------------------------------------------------------------------
 |  Inheritance in Swift
 -----------------------------------------------------------------------------------------------------
*/

class Pet {
    var name = "Margo"
    var description: String {
        return "My name is \(name)"
    }
    
    func speak() {
        // Subclasses will add their code
    }
}

let cat = Pet()
print(cat.description)
// Output - My name is Margo

class Dog: Pet {
    var numberOfLegs = 4
}

let dog = Dog()
print(dog.numberOfLegs)
// Output - 4
print(dog.description)
// Output - My name is Margo

/*
 -----------------------------------------------------------------------------------------------------
 |  Overriding Methods
 -----------------------------------------------------------------------------------------------------
*/

class Cat: Pet {
    override var name: String {
        get {
            return ""
        } set {
            print(newValue)
        }
    }
    
    override func speak() {
        super.speak()
        print("Meow")
    }
}

let snowy = Cat()
snowy.speak()
// Output - "Meow"

/*
 -----------------------------------------------------------------------------------------------------
 |  Overriding Getter and Setter
 -----------------------------------------------------------------------------------------------------
*/

class NamedPet: Pet {
    var petName: String?
    
    override var name: String {
        get {
            return petName != nil ? petName! : super.name
        } set {
            petName = newValue
        }
    }
}

let max = NamedPet()
print(max.name)
// Output - Margo
max.name = "Max"
print(max.petName!)
// Ouptut - Max
print(max.name)
// Output - Max

/*
 -----------------------------------------------------------------------------------------------------
 |  Overriding Property Observers
 -----------------------------------------------------------------------------------------------------
*/

class SomePet: Pet {
    override var name: String {
        didSet {
            print("Name was changed to \(name)")
        }
    }
}

var lex = SomePet()
lex.name = "Lex"
// Output - "Name was changed to Lex"

/*
 -----------------------------------------------------------------------------------------------------
 |  Preventing Overrides
 -----------------------------------------------------------------------------------------------------
*/

class Planet {
    final var description: String {
        return "This is a planet"
    }
}
