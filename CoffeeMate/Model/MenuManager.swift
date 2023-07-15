//
//  MenuManager.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 14/07/23.
//

import Foundation
import Alamofire
import SwiftUI
class MenuManager: ObservableObject {
    
    @Published var menu: [Category] = []
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                .responseDecodable(of: [Category].self) { response in
                    if let menuFromNetwork = response.value {
                           print(response.value)
                           self.menu = menuFromNetwork
                       }
                   }
    }

}
