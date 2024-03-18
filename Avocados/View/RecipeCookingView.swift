//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Y K on 18.03.2024.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundStyle(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[1])
        .previewLayout(.fixed(width: 320, height: 60))
}
