//
//  HeaderModel.swift
//  Avocado
//
//  Created by Hassan Assiry on 01/05/2023.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
