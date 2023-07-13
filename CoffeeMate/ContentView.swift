//
//  ContentView.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 12/07/23.
//

import SwiftUI

struct ContentView: View {
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
            CartPage()
                .tabItem {
                    Image(systemName:"cart")
                    Text("Cart")
                }

            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


