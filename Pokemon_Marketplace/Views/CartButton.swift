//
//  CartButton.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-21.
//

import SwiftUI

struct CartButton: View {
    var numberOfPokemon: Int
        
        var body: some View {
            ZStack(alignment: .topTrailing) {
                Image(systemName: "cart")
                    .padding(.top, 5)

                if numberOfPokemon > 0 {
                    Text("\(numberOfPokemon)")
                        .font(.caption2).bold()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                        .cornerRadius(50)
                }
            }
        }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfPokemon: 1)
    }
}
