//
//  CartView.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-21.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
            ScrollView {
                if cartManager.pokemons.count > 0 {
                    ForEach(cartManager.pokemons, id: \.id) { pokemon in
                        PokemonRow(pokemon: pokemon)
                    }
                    HStack {
                        Text("Your total is:")
                            .bold()
                        Text("$\(cartManager.total)")
                            .bold()
                    }
                    
                    NavigationLink("Checkout", destination: Checkout())
                        .frame(width: 150, height: 50)
                        .foregroundColor(.white)
                        .background(.black.opacity(0.5))
                        .cornerRadius(20)
                        
                } else {
                    Text("Your cart is empty")
                }
            }
            .navigationTitle("My Cart")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
