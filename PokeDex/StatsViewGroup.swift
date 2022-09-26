//
//  StatsViewGroup.swift
//  PokeDex
//
//  Created by Giannis Mouratidis on 26/9/22.
//

import SwiftUI

struct StatsViewGroup: View
{
    var pokemon:Pokemon
    var body: some View
    {
        ZStack
            {
                Rectangle()
                    .frame(width: 300,height: 250)
                    .foregroundColor(.white)
                    .opacity(0.6)
                    .cornerRadius(20)
                VStack(alignment: .leading,spacing: 30)
                {
                    StatView(pokemon: pokemon, statName: "Atk", statColor: .red, statValue: pokemon.attack)
                    StatView(pokemon: pokemon, statName: "Def", statColor: .blue, statValue: pokemon.defense)
                    StatView(pokemon: pokemon, statName: "Wgt", statColor: .teal, statValue: pokemon.weight)
                    StatView(pokemon: pokemon, statName: "Hgt", statColor: .cyan, statValue: pokemon.height)
                }
            }
    }
}

struct StatsViewGroup_Previews: PreviewProvider {
    static var previews: some View {
        StatsViewGroup(pokemon: PokemonViewModel().MOCK_POKEMON)
    }
}
