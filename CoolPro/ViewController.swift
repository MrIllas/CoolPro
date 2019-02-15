//
//  ViewController.swift
//  CoolPro
//
//  Created by Robert Recorda on 23/1/19.
//  Copyright © 2019 RobertRecordà. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var pokemon:[Pokemon] = [Pokemon]()
    var tools:Tools = Tools()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //LOAD
        tools.parseCSVAnime(pokemon: &pokemon)
        printAnimeName()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func printAnimeName(){
        for a in pokemon{
            print(a.check)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! PokemonTableViewCell
        
        myCell.namePokemon.text = pokemon[indexPath.row].pokemon.uppercased()
        myCell.idPokemon.text = pokemon[indexPath.row].getEditedId
        myCell.imgType1.image = pokemon[indexPath.row].getTypeImg(type: 1)
        myCell.imgType2.image = pokemon[indexPath.row].getTypeImg(type: 2)
        /*let url = URL(string: article.imageURL)!
        cell.imageView.sd_setImage(with: url, placeholderImage: UIImage(named: "placeholder.png"))
        */
        //let url = URL(string: pokemon[indexPath.row].url_image)!
        //let imageData = try! Data(contentsOf: url)
        //myCell.imgPokemon.image = UIImage(data: imageData)
        /*myCell.imgPokemon.imageView.sd_setImage(with: url, placeholderImage: UIImage(named: "pk_Bulbasaur.png"))*/
        
        
        /*if listaRopa[indexPath.row].isLiked {
         myCell.isLiked.isHidden = false
         }else{
         myCell.isLiked.isHidden = true
         }*/
        
        
        
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Todos los Pokemon"
    }
    
    
}

