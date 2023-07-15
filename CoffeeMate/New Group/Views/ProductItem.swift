//
//  ProductItem.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import SwiftUI

struct ProductItem: View {
    var products:Product
    var body: some View {
        VStack{
            AsyncImage(url:products.imageURL)
                    .frame(width: 300, height: 150)
                    .background(Color("AccentColor"))
                HStack {
                    VStack(alignment: .leading) {
                        Text(products.name)
                            .font(.title3)
                            .bold()
                        Text("$ \(products.price)")
                            .font(.caption)
                        
                    }.padding(8)
                    Spacer()
                }
            }
            .background(Color("SurfaceBackground"))
            .cornerRadius(10)
            .padding(.trailing)
        }
}


struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(products: Product(id: 0, name: "tempName", description: "tasdmp", price: 0.3, image:"asdfasdf"))
    }
}
