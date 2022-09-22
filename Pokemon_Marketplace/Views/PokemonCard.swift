//
//  PokemonCard.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-19.
//

import SwiftUI

struct PokemonCard: View {
    @EnvironmentObject var cartManager: CartManager
    var pokemon: PokemonModel
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(pokemon.image)
                    .resizable()
                    .cornerRadius(8)
                    .frame(width: 175, height: 175)
                    .scaledToFit()
                    .shadow(radius: 10)
                    
                VStack {
                    Text(pokemon.name)
                        .bold()
                    Text("$\(pokemon.price)")
                }
                .frame(width: 175)
                .background(.gray.opacity(0.5))
                .cornerRadius(10)
            }
            
            Button(action: {
                cartManager.addToCart(pokemon: pokemon)
            }, label: {
                Image(systemName: "plus")
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.5))
                    .cornerRadius(20)
            })
        }
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(pokemon: pokemonList[0])
            .environmentObject(CartManager())
    }
}
