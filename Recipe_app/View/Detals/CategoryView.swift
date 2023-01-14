//
//  CategoryView.swift
//  Recipe_app
//
//  Created by md imran on 8/1/23.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject var recipeViewModel: RecipeViewModels
    
    var category: Category
    
    var recipe: [Recipe] {
        return recipeViewModel.recipes.filter { $0.categories == category.rawValue }
    }
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipe)
        }
        .navigationTitle( category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.desert)
            .environmentObject(RecipeViewModels())
    }
}
