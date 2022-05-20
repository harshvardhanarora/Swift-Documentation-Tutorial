/*
 -----------------------------------------------------------------------------------------------------
 |  Defining Functions
 -----------------------------------------------------------------------------------------------------
*/

func multiply(number: Int, with: Int) -> Int {
    return number * with
}

multiply(number: 5, with: 6) // Output - 30

func noParameters() -> String {
    return "This function has no parameters!"
}

noParameters()

func noReturnValue(text: String) {
    print(text)
}

noReturnValue(text: "This function does not return anything")

/*
 -----------------------------------------------------------------------------------------------------
 |  Functions with multiple return values
 -----------------------------------------------------------------------------------------------------
*/

func plusMinus(a: Int, b: Int) -> (plus: Int, minus: Int) {
    return (a + b, a - b)
}

let result = plusMinus(a: 7, b: 4)
print(result.plus) // Output - 11
print(result.minus) // Output - 3

/*
 -----------------------------------------------------------------------------------------------------
 |  Functions with optionals
 -----------------------------------------------------------------------------------------------------
*/

func plusMinusOptional(a: Int, b: Int) -> (plus: Int, minus: Int?) {
    if a > b {
        return (a + b, a - b)
    } else {
        return (a + b, nil)
    }
}

let optionalResult = plusMinusOptional(a: 5, b: 7)
print(optionalResult.plus) // Output - 12
print(optionalResult.minus) // Output - nil

func fullName(firstName: String, lastName: String?) -> String {
    if lastName != nil { return firstName + " " + lastName! }
    else { return firstName }
}

/*
 -----------------------------------------------------------------------------------------------------
 |  In-Out Functions
 -----------------------------------------------------------------------------------------------------
*/

var winner = "A"
func change(winner: inout String, to: String) {
    winner = to
}
print(winner) // Output - A
change(winner: &winner, to: "B")
print(winner) // Output - B

/*
 -----------------------------------------------------------------------------------------------------
 |  Function Labels
 -----------------------------------------------------------------------------------------------------
*/

func doSomething(with word: String, and number: Int) {
    // Do something here
}

doSomething(with: "A", and: 1)

func doSomething(word: String, number: Int) {
    // Do something here
}

doSomething(word: "A", number: 1)

func doSomething(_ word: String, _ number: Int) {
    // Do something here
}

doSomething("A", 1)

/*
 -----------------------------------------------------------------------------------------------------
 |  Function Overloading
 -----------------------------------------------------------------------------------------------------
*/

func overloadedFunction(with: String, and: Int) {
    // Some code here
}

func overloadedFunction(with: String, and: String) {
    // Some code here
}

func overloadedFunction(with: String, and: Int, for: Int) {
    // Some code here
}

func overloadedFunction(_ with: String, _ and: Int) {
    // Some code here
}

func overloadedFunction(with: String, and: Int) -> String {
    return with + String(and)
}

// overloadedFunction(with: "Test", and: 1)
// Error - Ambiguous use of overloadedFunction

/*
 -----------------------------------------------------------------------------------------------------
 |  Function Types
 -----------------------------------------------------------------------------------------------------
*/

func sum(a: Int, b: Int) -> Int {
    a + b
}

sum(a: 4, b: 5) // Output - 9

var arithmeticOperation: (Int, Int) -> Int = sum

arithmeticOperation(5, 8) // Output - 13

func product(a: Int, b: Int) -> Int {
    a * b
}

product(a: 4, b: 6) // Output - 24

arithmeticOperation = product
arithmeticOperation(5, 7) // Output - 35

/*
 -----------------------------------------------------------------------------------------------------
 |  Function as a Parameter
 -----------------------------------------------------------------------------------------------------
*/

func operation(a: Int, b: Int, operand: (Int, Int) -> Int) {
    print(operand(a, b))
}

operation(a: 5, b: 8, operand: product)
operation(a: 5, b: 8, operand: arithmeticOperation)

/*
 -----------------------------------------------------------------------------------------------------
 |  Function as a Return Type
 -----------------------------------------------------------------------------------------------------
*/

func choseOperand(from: String) -> (Int, Int) -> Int {
    if from == "Add" { return sum }
    else { return product }
}
