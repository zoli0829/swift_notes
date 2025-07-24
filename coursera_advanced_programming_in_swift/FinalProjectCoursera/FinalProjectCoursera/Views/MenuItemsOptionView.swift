//
//  MenuItemsOptionView.swift
//  FinalProjectCoursera
//
//  Created by Zoltan Vegh on 21/07/2025.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var categoriesToShow: [Category]
    
    var body: some View {
        VStack{
            HStack {
                Text("Filter")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.largeTitle)
                
                Button("Done") {
                    dismiss()
                }
                .padding(.horizontal)
                .bold()
            }
            
            List {
                Section(header: Text("Selected Categories").textCase(.uppercase)) {
                    ForEach(Category.allCases, id: \.self) { category in
                        Button {
                            toggle(category)
                        } label: {
                            HStack {
                                Text(category.rawValue.capitalized)
                                Spacer()
                                if categoriesToShow.contains(category) {
                                    Image(systemName: "checkmark")
                                }
                            }
                        }
                    }
                }
            }
            
            
            List {
                Section(header: Text("Sort By").textCase(.uppercase)) {
                    ForEach(Sorting.allCases, id: \.self) { type in
                        Button(type.rawValue.capitalized) {
                            // TODO:sorting logic
                        }
                    }
                }
            }
            
        }
        .navigationTitle("Filter")
    }
    
    private func toggle(_ category: Category) {
        if let index = categoriesToShow.firstIndex(of: category) {
            categoriesToShow.remove(at: index)
        } else {
            categoriesToShow.append(category)
        }
    }
}

#Preview {
    MenuItemsOptionView(categoriesToShow: .constant([.food]))
}
