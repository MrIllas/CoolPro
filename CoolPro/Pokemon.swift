//
//  Pokemon.swift
//  CoolPro
//
//  Created by Robert Recordà Illas on 09/02/2019.
//  Copyright © 2019 RobertRecordà. All rights reserved.
//

import Foundation
import UIKit
class Pokemon{
    
    var pokemon:String
    var id:Int
    var species_id:Int
    var height:Int
    var weight:Int
    var base_experience:Int
    var type_1:String
    var type_2:String
    var attack:Int
    var defense:Int
    var hp:Int
    var special_attack:Int
    var special_defense:Int
    var speed:Int
    var ability_1:String
    var ability_2:String
    var ability_hidden:String
    var color_1:String
    var color_2:String
    var color_f:String
    var egg_group_1:String
    var egg_group_2:String
    var url_image:String
    var generation_id:Int
    var evolves_from_species_id:Int
    var evolution_chain_id:Int
    var shape_id:Int
    var shape:String
    var pokebase:String
    var pokedex:String
    
    init(pokemon:String, id:String, species_id:String, height:String, weight:String, base_experience:String, type_1:String, type_2:String, attack:String, defense:String, hp:String, special_attack:String, special_defense:String, speed:String, ability_1:String, ability_2:String, ability_hidden:String, color_1:String, color_2:String, color_f:String, egg_group_1:String, egg_group_2:String, url_image:String, generation_id:String, evolves_from_species_id:String, evolution_chain_id:String, shape_id:String, shape:String, pokebase:String, pokedex:String){
        
        
        self.pokemon = pokemon
        self.id = Int(id)!
        self.species_id = Int(species_id)!
        self.height = Int(height)!
        self.weight = Int(weight)!
        self.base_experience = Int(base_experience)!
        self.type_1 = type_1
        self.type_2 = type_2
        self.attack = Int(attack)!
        self.defense = Int(defense)!
        self.hp = Int(hp)!
        self.special_attack = Int(special_attack)!
        self.special_defense = Int(special_defense)!
        self.speed = Int(speed)!
        self.ability_1 = ability_1
        self.ability_2 = ability_2
        self.ability_hidden = ability_hidden
        self.color_1 = color_1
        self.color_2 = color_2
        self.color_f = color_f
        self.egg_group_1 = egg_group_1
        self.egg_group_2 = egg_group_2
        self.url_image = url_image
        self.generation_id = Int(generation_id)!
        self.evolves_from_species_id = Int(evolves_from_species_id)!
        self.evolution_chain_id = Int(evolution_chain_id)!
        self.shape_id = Int(shape_id)!
        self.shape = shape
        self.pokebase = pokebase
        self.pokedex = pokedex
    }
    
    public var check:String{
        return "Name: \(pokemon)"
    }
    
    public var getEditedId:String{
        var toReturn:String = ""
        if id < 10 {
            toReturn = "#00\(id)"
        } else if id < 100{
            toReturn = "#0\(id)"
        }else{
            toReturn = "#\(id)"
        }
        
        return toReturn
    }
    
    func getTypeImg(type:Int) -> UIImage{
        var com:String
        if type == 1{
            com = type_1
        }else{
            com = type_2
        }
        switch(com){
        case "bug":
            return UIImage(named: "type_bug.png")!
        case "dark":
            return UIImage(named: "type_dark.png")!
        case "dragon":
            return UIImage(named: "type_dragon.png")!
        case "electric":
            return UIImage(named: "type_electric.png")!
        case "fairy":
            return UIImage(named: "type_fairy.png")!
        case "fighting":
            return UIImage(named: "type_fighting.png")!
        case "fire":
            return UIImage(named: "type_fire.png")!
        case "flying":
            return UIImage(named: "type_flying.png")!
        case "ghost":
            return UIImage(named: "type_ghost.png")!
        case "grass":
            return UIImage(named: "type_grass.png")!
        case "ground":
            return UIImage(named: "type_ground.png")!
        case "ice":
            return UIImage(named: "type_ice.png")!
        case "normal":
            return UIImage(named: "type_normal.png")!
        case "poison":
            return UIImage(named: "type_poison.png")!
        case "psychic":
            return UIImage(named: "type_psychic.png")!
        case "rock":
            return UIImage(named: "type_rock.png")!
        case "steel":
            return UIImage(named: "type_steel.png")!
        case "water":
            return UIImage(named: "type_water.png")!
        default:
            return UIImage(named: "error.png")!
        }
    }
}
