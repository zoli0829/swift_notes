import Foundation

// Step 1: Create a class to represent a calculator
class Calculator {
    // Step 2: Create a division function
    // Step 6: Check for division by zero inside your function and throw an error
    func divide(x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x / y
    }
}

// Step 3: Initialize the class to a constant
let calculator = Calculator()

// Step 4: Call the function to divide two numbers
// Step 7: Use do-catch on your function call to handle thrown errors
do {
    let successfulResult = try calculator.divide(x: 10, y: 2)
    print(successfulResult)
}
catch CalculatorError.divisionByZero {
    print("Error: Division by zero is not allowed")
}
catch {
    print(error)
}

// Step 8: Create success and failure scenarios for calling the division function
do {
    let unsuccesfulResult = try calculator.divide(x: 10, y: 0)
    print(unsuccesfulResult)
}
catch CalculatorError.divisionByZero {
    print("Error: Division by zero is not allowed")
}
catch {
    print(error)
}

// Step 5: Create a custom enumeration for errors
enum CalculatorError: Error {
    case divisionByZero
}
