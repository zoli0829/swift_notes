//
//  MenuItemsOptionView.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import SwiftUI

struct MenuItemsOptionView: View {
    var body: some View {
        VStack{
            Text("Filter")
                .bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.largeTitle)
            
            List {
                Section(header: Text("Selected Categories").textCase(.uppercase)) {
                    ForEach(Category.allCases, id: \.self) { category in
                        Text(category.rawValue.capitalized)
                    }
                }
            }
            
            
            List {
                Section(header: Text("Sort By").textCase(.uppercase)) {
                    ForEach(Sorting.allCases, id: \.self) { type in
                        Text(type.rawValue.capitalized)
                    }
                }
            }
        }
        .navigationTitle("Filter")
    }
}

#Preview {
    MenuItemsOptionView()
}
