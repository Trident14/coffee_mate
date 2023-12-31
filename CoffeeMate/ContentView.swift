//
//  ContentView.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 12/07/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager:CartManager
    var body: some View{
        TabView{
            MenuPage()
                .tabItem {
                    Image(systemName:"cup.and.saucer")
                    Text("Menu")
                }

            offersPage()
                .tabItem {
                    Image(systemName:"tag")
                    Text("Offers")
                }
            InfoPage()
                .tabItem {
                    Image(systemName:"info")
                    Text("Info")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName:"cart")
                    Text("Cart")
                }
                .badge(cartManager.cart.count)

            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


