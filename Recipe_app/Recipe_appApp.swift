//
//  Recipe_appApp.swift
//  Recipe_app
//
//  Created by md imran on 6/1/23.
//

import SwiftUI

@main
struct Recipe_appApp: App {
    
    @StateObject var recipeViewModel = RecipeViewModels()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
