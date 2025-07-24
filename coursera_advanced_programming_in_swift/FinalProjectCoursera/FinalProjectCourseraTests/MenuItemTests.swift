//
//  MenuItemTests.swift
//  FinalProjectCourseraTests
//
//  Created by Zoltan Vegh on 24/07/2025.
//

import Foundation
import Testing
import XCTest
@testable import FinalProjectCoursera

struct MenuItemTests {

    @Test func test_menuItemTitleTest() {
        let item = MenuItem(title: "Spaghetti", ingredients: [.pasta, .tomatoSauce], price: 9.99, menuCategory: .food, orderCount: 88, id: UUID())
        
        XCTAssertEqual(item.title, "Spaghetti")
    }
    
    @Test func test_menuItemIngredientsTest() {
        let item = MenuItem(title: "Spaghetti", ingredients: [.pasta, .tomatoSauce], price: 9.99, menuCategory: .food, orderCount: 88, id: UUID())
        
        let expectedIngredients: [Ingredient] = [.pasta, .tomatoSauce]
        XCTAssertEqual(item.ingredients, expectedIngredients)
    }

}
