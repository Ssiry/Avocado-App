//
//  RecipeModel.swift
//  Avocado
//
//  Created by Hassan Assiry on 01/05/2023.
//

import Foundation

struct Recipe: Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
    
}
