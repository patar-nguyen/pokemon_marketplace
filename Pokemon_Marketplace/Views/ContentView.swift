//
//  ContentView.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-19.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 30)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(pokemonList, id: \.id) { pokemon in
                        PokemonCard(pokemon: pokemon)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle("Pokemon Marketplace")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfPokemon: cartManager.pokemons.count)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
