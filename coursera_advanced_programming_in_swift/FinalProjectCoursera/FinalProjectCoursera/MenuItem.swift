//
//  MenuItem.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import Foundation

class MenuItem: Identifiable, MenuItemProtocol {
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
}

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: Category { get }
    var orderCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}
