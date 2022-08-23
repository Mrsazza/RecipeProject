//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Todd Myers on 8/24/21.
//

import SwiftUI

struct RecipeTabView: View {
    /// We should declare our view model at least and only once in our app as observed. So if any data changes in our view model. It'll change and refresh all of our views.
    @ObservedObject var recipeVM = RecipeModel()
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    VStack{
                        Image(systemName: "house.fill")
                        Text("Home Screen")
                    }
                }
            RecipeFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "heart.fill")
                        Text("Mamaw's Recipes")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("All Family Recipes")
                    }
                }
        }
        /// we should pass our declared observed vm to our app.
        .environmentObject(recipeVM)
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
