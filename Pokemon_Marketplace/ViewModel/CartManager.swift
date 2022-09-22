//
//  CartManager.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-21.
//

import Foundation

class CartManager: ObservableObject {
    @Published var pokemons: [PokemonModel] = []
    @Published var total: Int = 0
    
    func addToCart(pokemon: PokemonModel) {
        pokemons.append(pokemon)
        total += pokemon.price
    }
    
    func removeFromCart(pokemon: PokemonModel) {
        pokemons = pokemons.filter { $0.id != pokemon.id }
        total -= pokemon.price
    }
}
