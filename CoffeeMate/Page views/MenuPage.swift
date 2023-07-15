//
//  MenuPage.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager:MenuManager
    var body: some View {
        NavigationView {
            List{
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products){product in
                        NavigationLink{
                            Details()
                        }label: {
                            ProductItem(products: product)
                        }
                    }
                    
                }.navigationTitle("Menu")
            }
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage().environmentObject(MenuManager())
    }
}
