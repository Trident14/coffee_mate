//
//  offer.swift
//  CoffeeMate
//
//  Created by Inesh Sekar on 13/07/23.
//

import SwiftUI

struct offer: View {
    
    var title=""
    var description=""
    var body: some View {
        ZStack{
            Image("BackgroungPattern")
                .frame(maxWidth: .infinity,maxHeight:200)
                .clipped()
            VStack {
                
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
            
        }
       
    }
}

struct offer_Previews: PreviewProvider {
    static var previews: some View {
        offer(title: "my offer",description: "this is a description")
    }
}
