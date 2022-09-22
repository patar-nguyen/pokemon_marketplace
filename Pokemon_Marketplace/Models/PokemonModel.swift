//
//  PokemonModel.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-19.
//

import Foundation

struct PokemonModel: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var pokemonList = [PokemonModel(name: "Pikachu", image: "Pikachu", price: 300),
                   PokemonModel(name: "Squirtle", image: "Squirtle", price: 250),
                   PokemonModel(name: "Charmander", image: "Charmander", price: 250),
                   PokemonModel(name: "Bulbasaur", image: "Bulbasaur", price: 250),
                   PokemonModel(name: "Snorlax", image: "Snorlax", price: 500),
                   PokemonModel(name: "Eevee", image: "Eevee", price: 99),
                   PokemonModel(name: "Psyduck", image: "Psyduck", price: 50),
                   PokemonModel(name: "Geodude", image: "Geodude", price: 125),
                   PokemonModel(name: "Meowth", image: "Meowth", price: 200),
                   PokemonModel(name: "Magikarp", image: "Magikarp", price: 75)]
