//
//  ColoresStruct.swift
//  MasFeliz
//
//  Created by Martin López Del Angel on 30/03/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import Foundation
import UIKit

struct Colores {
    let colores = [
        UIColor(red: 80/255, green: 180/255, blue: 50/255, alpha: 1),
        UIColor(red: 1/255, green: 180/255, blue: 60/255, alpha: 1),
        UIColor(red: 10/255, green: 280/255, blue: 70/255, alpha: 1),
        UIColor(red: 60/255, green: 80/255, blue: 80/255, alpha: 1),
        UIColor(red: 90/255, green: 60/255, blue: 90/255, alpha: 1),
        UIColor(red: 80/255, green: 80/255, blue: 100/255, alpha: 1),
        UIColor(red: 50/255, green: 30/255, blue: 10/255, alpha: 1),
        UIColor(red: 100/255, green: 40/255, blue: 20/255, alpha: 1)
    ]
    
    func regresaColorAleatorio() -> UIColor{
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
    
}

struct Frases {
    let frases = [
        "frase 1",
        "frase 2",
        "frase 3",
        "frase 4",
        "frase 5",
        "frase 6",
        "frase 7",
        "frase 8"
    ]
    
    func regresaFraseAleatorio() -> String{
        let posicion = Int(arc4random()) % frases.count
        return frases[posicion]
    }
}

