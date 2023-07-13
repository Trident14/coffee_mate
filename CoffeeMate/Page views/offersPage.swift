//
//  offersPage.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import SwiftUI

struct offersPage: View {
    var body: some View {
        NavigationView{
            List {
               
                offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                offer(title: "Welcome Gift", description: "25% off on your first order.")
                offer(title: "Welcome Gift", description: "25% off on your first order.")
        
            }.navigationTitle("Offers")
        }
    }
}

struct offersPage_Previews: PreviewProvider {
    static var previews: some View {
        offersPage()
    }
}
