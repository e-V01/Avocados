//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Y K on 18.03.2024.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
        .previewLayout(.fixed(width: 320, height: 60))
}
