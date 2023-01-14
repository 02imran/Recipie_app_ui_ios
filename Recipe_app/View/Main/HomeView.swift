//
//  HomeView.swift
//  Recipe_app
//
//  Created by md imran on 7/1/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var recipeViewModel: RecipeViewModels
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipeViewModel.recipes)
            }
            .navigationTitle("My Recipe")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
            HomeView()
            .environmentObject(RecipeViewModels())
    }
}
