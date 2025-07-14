import Foundation

// Step 1: Define a custom protocol
// Step 2: Define protocol properties requirements
// Step 3: Define protocol methods requirements
protocol Dish {
    var name: String { get }
    var preparationMinutes: Int {get set}
    
    func prepare()
    func plate(artisticLevel: Int)
}

// Step 4: Adopt the custom protocol in a class
// Step 5: Conform to the protocol properties requirements
// Step 6: Create a memberwise initializer
// Step 7: Conform to the protocol methods requirements
class MainDish: Dish {
    var name: String
    var preparationMinutes: Int
    
    init(name: String, preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
    
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
    
    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel)")
    }
}

// Step 8: Instantiate a MainDish class instance
var superSpaghetti = MainDish(name: "Super Spaghetti", preparationMinutes: 35)

// Step 9: Calling the prepare method
superSpaghetti.prepare()

//  Step 10: Calling the plate(artisticLevel :) method
superSpaghetti.plate(artisticLevel: 10)
