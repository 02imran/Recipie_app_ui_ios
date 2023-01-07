//
//  TabBar.swift
//  Recipe_app
//
//  Created by md imran on 7/1/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Home", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecipieView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            
            FavouriteView()
                .tabItem {
                    Label("Favourite", systemImage: "heart")
                }
            
            SettingView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
