//
//  MenuCategory.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    case food
    case drink
    case dessert
    
    // Conform to identifiable
    var id: String { self.rawValue }
}

enum Sorting: String, CaseIterable, Identifiable {
    case mostPopular = "Most Popular"
    case lowestPrice = "Price $-$$$"
    case alphabetically = "A-Z"
    
    // Conform to identifiable
    var id: String { self.rawValue }
}
