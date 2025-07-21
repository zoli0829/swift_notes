//
//  MenuItemsView.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        Text("Menu")
            .bold()
            .font(.largeTitle)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        
        ScrollView {
            Section {
                VStack {
                    Text("Food")
                        .bold()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),]) {
                        ForEach(MockMenuItems.mockMenuItems, id: \.self) { item in
                            if item.menuCategory == .food {
                                VStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.black)
                                        .frame(width: 100, height: 100)
                                    
                                    Text(item.title)
                                }
                            }
                        }
                    }
                }
            }
            
            Section {
                VStack {
                    Text("Drinks")
                        .bold()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),]) {
                        ForEach(MockMenuItems.mockMenuItems, id: \.self) { item in
                            if item.menuCategory == .drink {
                                VStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.black)
                                        .frame(width: 100, height: 100)
                                    
                                    Text(item.title)
                                }
                            }
                        }
                    }
                }
            }
            
            Section {
                VStack {
                    Text("Dessert")
                        .bold()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),]) {
                        ForEach(MockMenuItems.mockMenuItems, id: \.self) { item in
                            if item.menuCategory == .dessert {
                                VStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.black)
                                        .frame(width: 100, height: 100)
                                    
                                    Text(item.title)
                                }
                            }
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    MenuItemsView()
}
