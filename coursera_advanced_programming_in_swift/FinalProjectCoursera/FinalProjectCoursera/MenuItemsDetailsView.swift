//
//  MenuItemsDetailsView.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import SwiftUI

struct MenuItemsDetailsView: View {
    let menuItem: MenuItem
    
    var body: some View {
        VStack {
            Text(menuItem.title)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(.littleLemonLogo)
                .resizable()
                .scaledToFit()
            
            Section {
                Text("Price:")
                    .bold()
                Text("\(menuItem.price.formatted(.currency(code: "EUR")))")

            }
            
            Section {
                Text("Ordered:")
                    .bold()
                Text("\(menuItem.orderCount)")
            }
            
            Section {
                Text("Ingredients:")
                    .bold()
                ForEach(menuItem.ingredients, id: \.self) { ingredient in
                    Text(ingredient.rawValue.lowercased())
                }
            }
        }
    }
}

#Preview {
    MenuItemsDetailsView(menuItem: MenuItem(title: "Test Item Name", ingredients: [.broccoli, .carrot], price: 9.99, menuCategory: .food, orderCount: 1, id: UUID()))
}
