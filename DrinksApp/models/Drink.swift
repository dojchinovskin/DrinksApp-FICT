//
//  Drink.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 10.4.23.
//

import UIKit

struct Drink {
    let id: String
    let name: String
    let image: UIImage
    
    static func getDrinks() -> [Drink] {
        [
            Drink(id: "1",
                  name: "Wine",
                  image: UIImage(systemName: "wineglass")!),
            Drink(id: "2",
                  name: "Beer",
                  image: UIImage(systemName: "wineglass")!),
            Drink(id: "3",
                  name: "Water",
                  image: UIImage(systemName: "wineglass")!),
            Drink(id: "4",
                  name: "Coca cola",
                  image: UIImage(systemName: "wineglass")!)
        ]
    }
    
}
