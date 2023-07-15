//
//  CoffeeMateApp.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 12/07/23.
//

import SwiftUI

@main
struct CoffeeMateApp: App {
    var menuManager=MenuManager()
    var cartManager=CartManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
