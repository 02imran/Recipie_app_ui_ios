//
//  RecipeView.swift
//  Recipe_app
//
//  Created by md imran on 7/1/23.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
       
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(1.2, contentMode: .fill)
                        
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100,  alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)

                }
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                
                
                VStack(spacing: 20) {
                    Text(recipe.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    
                    VStack(alignment: .leading, spacing: 30) {
                        if !recipe.description.isEmpty {
                            Text(recipe.description)
                        }
                        
                        if !recipe.ingradients.isEmpty {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Ingradients")
                                    .font(.headline)
                                
                                Text(recipe.ingradients)
                            }
                        }
                        
                        
                        if !recipe.direction.isEmpty {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Direction")
                                    .font(.headline)
                                
                                Text(recipe.direction)
                            }
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }.padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
