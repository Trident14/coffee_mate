//
//  Details.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import SwiftUI

struct Details: View {
   @State var quantity=1
    @EnvironmentObject var cartManager:CartManager
    @Environment(\.dismiss) var dismiss
    
    var product:Product
    var body: some View {
        ScrollView {
            AsyncImage(url:product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                .foregroundColor(Color("Primary"))
                
            
            HStack {
                Text("$\(product.price,specifier: "%0.2f")")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity)*product.price,specifier: "%0.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity:quantity)
                    dismiss()
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
            .navigationTitle("product")
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(product: Product(id: 1, name: "Dummy", description: "", price: 1.25, image: ""))
            .environmentObject(CartManager())
    }
}
