//
//  NewRecipieView.swift
//  Recipe_app
//
//  Created by md imran on 7/1/23.
//

import SwiftUI

struct NewRecipieView: View {
    
    @State private var showAddRecipe: Bool = false
    
    var body: some View {
        NavigationView {
            Button("Add New Recipe", action: {
                showAddRecipe = true
            })
            .sheet(isPresented: $showAddRecipe, content: {
                AddRecipeView()
            })
                .navigationTitle("New Recipie")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipieView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipieView()
    }
}
