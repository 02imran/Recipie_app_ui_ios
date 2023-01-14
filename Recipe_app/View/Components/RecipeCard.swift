//
//  RecipeCard.swift
//  Recipe_app
//
//  Created by md imran on 7/1/23.
//

import SwiftUI

struct RecipeCard: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                        
                            .foregroundColor(Color.white)
                            .shadow(color: .black, radius: 3)
                            .frame(maxWidth: 150)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40,  alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .shadow(color: .black, radius: 3)
                            .frame(maxWidth: 150)
                            .padding()
                    }
            }
        }
        .frame(width: 165, height: 230, alignment: .top)
        .scaledToFit()
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 0)

    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}
