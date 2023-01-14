//
//  ContentView.swift
//  Recipe_app
//
//  Created by md imran on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBarView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipeViewModels())
    }
}
