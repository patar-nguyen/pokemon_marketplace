//
//  PokemonRow.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-21.
//

import SwiftUI

struct PokemonRow: View {
    @EnvironmentObject var cartManager: CartManager
    var pokemon: PokemonModel
    var body: some View {
        HStack(spacing: 20) {
            Image(pokemon.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(pokemon.name)
                    .bold()
                
                Text("$\(pokemon.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(pokemon: pokemon)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(pokemon: pokemonList[2])
            .environmentObject(CartManager())
    }
}
