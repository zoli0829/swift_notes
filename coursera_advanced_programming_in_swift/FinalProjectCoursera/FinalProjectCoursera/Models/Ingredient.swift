//
//  Ingredient.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import Foundation

enum Ingredient: String, Identifiable, CaseIterable, Hashable {
    case spinach
    case broccoli
    case carrot
    case pasta
    case tomatoSauce
    
    // Conform to identifiable
    var id: String { self.rawValue }
}
