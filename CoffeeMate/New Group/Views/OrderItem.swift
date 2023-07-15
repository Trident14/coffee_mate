//
//  OrderItem.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 14/07/23.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager:CartManager
    var item:(Product,Int)
    var body: some View {
        HStack{
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("\(Double(item.1)*item.0.price)")
            
            Image(systemName:"trash")
                .font(.title)
                .foregroundColor(Color("secondary"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product:item.0)
                }
                
        }.padding()
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "", description: "", price:1, image: ""), 1))
    }
}
