//
//  MenuPage.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<10) { item in
                    NavigationLink{
                        Details()
                    }label: {
                        ProductItem()
                    }
                    
                }.navigationTitle("Menu")
            }
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
