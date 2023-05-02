//
//  RecipeRatingView.swift
//  Avocado
//
//  Created by Hassan Assiry on 01/05/2023.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTY
    var recipe: Recipe
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center,spacing: 5) {
            ForEach(1...(recipe.rating),id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
