// Optionals
import Foundation

struct User? {
  let name: String?
  let age: Int?
}

let user = User(name: "Sean", age: nil)

// IF LET
// we can only use age in this scope
if let age = user.age {
  print("User's age is \(age)")
} else {
  print("User's age is not available")
}

// GUARD LET
// we can use age in this whole function
func check(age: Int?) {
  guard let age else {
    print("Age is not available")
    return
  }
}

// NIL COALESCING
let age = user.age ?? 0
let name = user.name ?? "Anonymous"

// FORCED UNWRAPPING
let age = user.age!

//OPTIONAL CHAINING
var optionalUser: User?
let name = optionalUser?.name ?? "Anon"

if let newName = optionalUser.name {
    print(newName)
}

// Day 3 of doing Coursera