//
//  AddRecipeView.swift
//  Recipe_app
//
//  Created by md imran on 8/1/23.
//

import SwiftUI

struct AddRecipeView: View {
    
    @State private var name: String = ""
    @State private var categorySelection: Category = Category.main
    @State private var discription: String = ""
    @State private var ingridents: String = ""
    @State private var directions: String = ""
    @State private var isActive: Bool = false
    
    @Environment(\.dismiss) var close
    
    @EnvironmentObject var recipeViewModel: RecipeViewModels
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Name", text: $name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $categorySelection) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                }
                
                Section(header: Text("Discription")) {
                    TextField("",text: $discription)
                }
                
                Section(header: Text("Ingridents")) {
                    TextField("",text: $ingridents)
                }
                
                Section(header: Text("Directions")) {
                    TextField("",text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        close()
                    } label: {
                        Label("Cancel",systemImage: "xmark")
                    }

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $isActive) {
                        RecipeView(recipe: recipeViewModel.recipes.sorted { $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            isActive = true
                        } label: {
                            Label("Done",systemImage: "checkmark")
                        }
                    }
                .disabled(name.isEmpty)

                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipeViewModels())
    }
}


extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        let recipes = Recipe(name: name, image: "", description: discription, ingradients: ingridents, direction: directions, categories: categorySelection.rawValue, datePublished: "", url: "")
        
        recipeViewModel.addRecipe(recipe: recipes)
    }
}
