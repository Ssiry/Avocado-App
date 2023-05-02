//
//  FactsModel.swift
//  Avocado
//
//  Created by Hassan Assiry on 01/05/2023.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
