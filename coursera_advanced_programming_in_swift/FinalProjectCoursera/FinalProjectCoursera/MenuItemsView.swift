//
//  MenuItemsView.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var showingOptionsSheet = false
    @State private var categoriesToShow: [Category] = [.food, .drink, .dessert]
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Section {
                        VStack {
                            if categoriesToShow.contains(.food) {
                                Text("Food")
                                    .bold()
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                
                                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),]) {
                                    ForEach(MockMenuItems.mockMenuItems, id: \.self) { item in
                                        if item.menuCategory == .food {
                                            NavigationLink(destination: MenuItemsDetailsView(menuItem: item)) {
                                                VStack{
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .fill(Color.black)
                                                        .frame(width: 100, height: 100)
                                                        .padding(.horizontal)
                                                    
                                                    Text(item.title)
                                                        .padding(.horizontal)
                                                        .foregroundStyle(.primary)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Section {
                        VStack {
                            if categoriesToShow.contains(.drink) {
                                Text("Drinks")
                                    .bold()
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                
                                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),]) {
                                    ForEach(MockMenuItems.mockMenuItems, id: \.self) { item in
                                        if item.menuCategory == .drink {
                                            NavigationLink(destination: MenuItemsDetailsView(menuItem: item)) {
                                                VStack{
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .fill(Color.black)
                                                        .frame(width: 100, height: 100)
                                                        .padding(.horizontal)
                                                    
                                                    Text(item.title)
                                                        .padding(.horizontal)
                                                        .foregroundStyle(.primary)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Section {
                        VStack {
                            if categoriesToShow.contains(.dessert) {
                                Text("Dessert")
                                    .bold()
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                
                                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),]) {
                                    ForEach(MockMenuItems.mockMenuItems, id: \.self) { item in
                                        if item.menuCategory == .dessert {
                                            NavigationLink(destination: MenuItemsDetailsView(menuItem: item)) {
                                                VStack{
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .fill(Color.black)
                                                        .frame(width: 100, height: 100)
                                                        .padding(.horizontal)
                                                    
                                                    Text(item.title)
                                                        .padding(.horizontal)
                                                        .foregroundStyle(.primary)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                }
            }
            .navigationTitle("Menu")
            .toolbar {
            Button(action: {
                showingOptionsSheet.toggle()
            }) {
                Image(systemName: "slider.horizontal.3")
            }
            .sheet(isPresented: $showingOptionsSheet) {
                MenuItemsOptionView(categoriesToShow: $categoriesToShow)
            }
        }
        }
    }
}

#Preview {
    MenuItemsView()
}
