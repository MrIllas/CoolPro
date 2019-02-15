//
//  Tools.swift
//  CoolPro
//
//  Created by Robert Recordà Illas on 08/02/2019.
//  Copyright © 2019 RobertRecordà. All rights reserved.
//

import Foundation

class Tools{
    func parseCSVAnime(pokemon: inout [Pokemon]){
        //Obtengo el fichero y su tipo
        let path = Bundle.main.path(forResource: "pokedex", ofType: "csv")!
        
        do{
            //Utilizo la librería para obtener la decodificación
            let csv = try CSV(contentsOfURL: path)
            
            //Recorro el fichero por filas y lo guardo  en el array
            for row in csv.rows{
                pokemon.append(Pokemon(
                    
                    pokemon: row["pokemon"]!,
                    id: row["id"]!,
                    species_id: row["species_id"]!,
                    height: row["height"]!,
                    weight: row["weight"]!,
                    base_experience: row["base_experience"]!,
                    type_1: row["type_1"]!,
                    type_2: row["type_2"]!,
                    attack: row["attack"]!,
                    defense: row["defense"]!,
                    hp: row["hp"]!,
                    special_attack: row["special_attack"]!,
                    special_defense: row["special_defense"]!,
                    speed: row["speed"]!,
                    ability_1: row["ability_1"]!,
                    ability_2: row["ability_2"]!,
                    ability_hidden: row["ability_hidden"]!,
                    color_1: row["color_1"]!,
                    color_2: row["color_2"]!,
                    color_f: row["color_f"]!,
                    egg_group_1: row["egg_group_1"]!,
                    egg_group_2: row["egg_group_2"]!,
                    url_image: row["url_image"]!,
                    generation_id: row["generation_id"]! != "NA" ? row["generation_id"]! : "9999",
                    evolves_from_species_id: row["evolves_from_species_id"]! != "NA" ? row["evolves_from_species_id"]! : "9999",
                    evolution_chain_id: row["evolution_chain_id"]! != "NA" ? row["evolution_chain_id"]! : "9999",
                    shape_id: row["shape_id"]! != "NA" ? row["shape_id"]! : "9999",
                    shape: row["shape"]!,
                    pokebase: row["pokebase"]!,
                    pokedex: row["pokedex"]!       
                ))
            }
        }catch let error as NSError{
            print("Error decodificando el CSV", error)
        }
    }
}
