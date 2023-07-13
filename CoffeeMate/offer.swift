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
        VStack {
            Text(title)
                .padding()
                .font(.title)
            
            Text(description)
                .padding()
        }
    }
}

struct offer_Previews: PreviewProvider {
    static var previews: some View {
        offer(title: "my offer",description: "this is a description")
    }
}
