//
//  RecipeList.swift
//  Recipe_app
//
//  Created by md imran on 7/1/23.
//

import SwiftUI

struct RecipeList: View {
    
    var recipes: [Recipe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "Recipes": "Recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 140), spacing: 0)], spacing: 15) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                }
            }
        }
        .padding()
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipes: Recipe.all)
        }
    }
}
