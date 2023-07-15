//
//  Category.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let name: String
    let products: [Product]
    var id:String{
        return self.name
    }
}

