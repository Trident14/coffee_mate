//
//  Product.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let image: String
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(image)")!
    }
}
