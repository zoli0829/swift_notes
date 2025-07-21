//
//  MenuItem.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import Foundation

class MenuItem: Identifiable, MenuItemProtocol, Hashable {
    var title: String
    var ingredients: [Ingredient]
    var price: Double
    var menuCategory: Category
    var orderCount: Int = 0
    var id: UUID
    
    init(title: String, ingredients: [Ingredient], price: Double, menuCategory: Category, orderCount: Int, id: UUID) {
        self.title = title
        self.ingredients = ingredients
        self.price = price
        self.menuCategory = menuCategory
        self.orderCount = orderCount
        self.id = id
    }
    
    // Hashable -> 1.Step: Implement the == operator (Equatable)
    static func == (lhs: MenuItem, rhs: MenuItem) -> Bool {
        lhs.id == rhs.id
    }
    
    // 2. Step: Implement the hash(into:) method
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
}

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: Category { get }
    var orderCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MockMenuItems: Hashable {
    static let mockMenuItems: [MenuItem] = [
        MenuItem(title: "Test 1", ingredients: [.broccoli, .carrot], price: 9.99, menuCategory: .food, orderCount: 65, id: UUID()),
        MenuItem(title: "Green Pasta", ingredients: [.pasta, .spinach], price: 11.50, menuCategory: .food, orderCount: 32, id: UUID()),
        MenuItem(title: "Veggie Delight", ingredients: [.carrot, .broccoli, .spinach], price: 10.75, menuCategory: .food, orderCount: 48, id: UUID()),
        MenuItem(title: "Tomato Spinach Bake", ingredients: [.spinach, .tomatoSauce], price: 9.25, menuCategory: .food, orderCount: 27, id: UUID()),
        MenuItem(title: "Carrot Medley", ingredients: [.carrot, .pasta], price: 8.99, menuCategory: .food, orderCount: 53, id: UUID()),
        MenuItem(title: "Broccoli Bomb", ingredients: [.broccoli], price: 7.80, menuCategory: .food, orderCount: 41, id: UUID()),
        MenuItem(title: "Pasta Supreme", ingredients: [.pasta, .tomatoSauce, .spinach], price: 12.20, menuCategory: .food, orderCount: 75, id: UUID()),
        MenuItem(title: "Red Garden Bowl", ingredients: [.carrot, .tomatoSauce], price: 9.45, menuCategory: .food, orderCount: 34, id: UUID()),
        MenuItem(title: "Leafy Veggie Wrap", ingredients: [.spinach, .carrot], price: 8.30, menuCategory: .food, orderCount: 50, id: UUID()),
        MenuItem(title: "Pasta Primavera", ingredients: [.pasta, .broccoli, .carrot], price: 11.90, menuCategory: .food, orderCount: 60, id: UUID()),
        MenuItem(title: "Tomato Pasta Bowl", ingredients: [.pasta, .tomatoSauce], price: 10.15, menuCategory: .food, orderCount: 44, id: UUID()),
        MenuItem(title: "Spinach Boost", ingredients: [.spinach], price: 7.25, menuCategory: .food, orderCount: 38, id: UUID()),
        MenuItem(title: "Cola", ingredients: [.pasta], price: 3.99, menuCategory: .drink, orderCount: 55, id: UUID()),
        MenuItem(title: "Green Boost", ingredients: [.spinach], price: 4.25, menuCategory: .drink, orderCount: 47, id: UUID()),
        MenuItem(title: "BroccoFizz", ingredients: [.broccoli], price: 4.10, menuCategory: .drink, orderCount: 38, id: UUID()),
        MenuItem(title: "Carrot Splash", ingredients: [.carrot], price: 3.80, menuCategory: .drink, orderCount: 62, id: UUID()),
        MenuItem(title: "Pasta Punch", ingredients: [.pasta], price: 4.50, menuCategory: .drink, orderCount: 29, id: UUID()),
        MenuItem(title: "Tomato Tonic", ingredients: [.tomatoSauce], price: 4.00, menuCategory: .drink, orderCount: 51, id: UUID()),
        MenuItem(title: "Veggie Mix", ingredients: [.carrot, .spinach], price: 4.75, menuCategory: .drink, orderCount: 43, id: UUID()),
        MenuItem(title: "Garden Fizz", ingredients: [.broccoli, .tomatoSauce], price: 4.30, menuCategory: .drink, orderCount: 36, id: UUID()),
        MenuItem(title: "Carrot Cake", ingredients: [.carrot], price: 4.55, menuCategory: .dessert, orderCount: 69, id: UUID()),
        MenuItem(title: "Spinach Tart", ingredients: [.spinach], price: 4.25, menuCategory: .dessert, orderCount: 42, id: UUID()),
        MenuItem(title: "Tomato Delight", ingredients: [.tomatoSauce], price: 4.75, menuCategory: .dessert, orderCount: 33, id: UUID()),
        MenuItem(title: "Broccoli Brownie", ingredients: [.broccoli], price: 4.60, menuCategory: .dessert, orderCount: 27, id: UUID())
    ]
}
