import Foundation

class Dish {
    private let ingredients: [String]
    private let name: String
    
    init(ingredients: [String], name: String) {
        self.ingredients = ingredients
        self.name = name
    }
    
    func printInfo() {
        print("Dish: \(name)")
        print("Ingredients: \(ingredients)")
    }
}

final class AppetizerDish: Dish {
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
    
}


for _ in 0..<5 {
    var randomNumber = Int.random(in: 0...1)
    var dish: Dish
    if randomNumber == 0 {
        dish = AppetizerDish(ingredients: ["Margherita", "Flatbread"], name: "Flatbread")
    } else {
        dish = MainDish(ingredients: ["Spaghetti", "Tomato sauce"], name: "Super Spaghetti")
    }
    
    // Before the end of the for loop iteration, downcast dish as an AppetizerDish with a conditional operator using an if let statement to a constant called appetizerDish. If successfully downcasted, call the printInfo method.
    if let appetizerDish = dish as? AppetizerDish {
        appetizerDish.printInfo()
    }
    
    // Before the end of the for-loop iteration, add an if statement and use the is type check operator to check whether the dish is MainDish type. If it is, print Main Dish inside the if statement.
    if dish is MainDish {
        print("Main Dish")
    }
}
