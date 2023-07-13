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
        ZStack {
            Image("BackgroungPattern")
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipped()
                VStack(alignment: .center, spacing: 50) {
                        VStack {
                            Text(title)
                                .padding()
                                .font(.title)
                                .background(Color("CardBackground"))
                                .padding(.bottom, 20)
                            Text(description)
                                .padding()
                                .background(Color("CardBackground"))
                }
                .frame(maxWidth: .infinity, minHeight: 150, maxHeight: 150, alignment: .center)
            }
        }.background(Color.white)
                
    }
}

struct offer_Previews: PreviewProvider {
    static var previews: some View {
        offer(title: "my offer",description: "this is a description")
    }
}
