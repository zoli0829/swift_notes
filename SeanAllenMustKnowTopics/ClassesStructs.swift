import SwiftUI

// Classes are reference types
class Car {
  var year: Int
  var make: String
  var color: String

  init(year: Int, make: String, color: String) {
    self.year = year
    self.make = make
    self.color = color
  }
}

var myCar = Car(year: 2020, make: "Toyota", color: "Red")
var stolenCar = myCar
stolenCar.color = "Black"
print(myCar.color)  // Output: Black

// Structs are value types
struct Car {
  var year: Int
  var make: String
  var color: String
}

var myOtherCar = Car(year: 2020, make: "Toyota", color: "Red")
var stolenOtherCar = myOtherCar
stolenOtherCar.color = "Yellow"
print(myOtherCar.color)  // Output: Red
