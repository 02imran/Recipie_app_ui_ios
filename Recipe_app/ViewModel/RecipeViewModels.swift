//
//  RecipeViewModels.swift
//  Recipe_app
//
//  Created by md imran on 12/1/23.
//

import Foundation


class RecipeViewModels: ObservableObject {
    @Published private (set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
