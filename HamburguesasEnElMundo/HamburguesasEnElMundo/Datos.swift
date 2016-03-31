//
//  Datos.swift
//  HamburguesasEnElMundo
//
//  Created by Martin López Del Angel on 31/03/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    let paises : [String] = [
        "Mexico",
        "Colombia",
        "Brasil",
        "Cuba",
        "Estados Unidos",
        "Venezuela",
        "Argentina",
        "Ecuador",
        "Costa Rica",
        "Canada",
        "España",
        "Francia",
        "Inglaterra",
        "Holanda",
        "Japon",
        "China",
        "Corea",
        "Rusia",
        "Alemania",
        "Camerun"
    ]
    
    func obtenPais( )->String{
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas {
    let hambuerguesas : [String] = [
        "Hambiuerguesa clasica",
        "Hambiuerguesa Hawaiana",
        "Hambiuerguesa Rocket",
        "Hambiuerguesa Grill",
        "Hambiuerguesa special 5",
        "Hambiuerguesa special 6",
        "Hambiuerguesa special 7",
        "Hambiuerguesa special 8",
        "Hambiuerguesa special 9",
        "Hambiuerguesa special 10",
        "Hambiuerguesa special 11",
        "Hambiuerguesa special 12",
        "Hambiuerguesa special 13",
        "Hambiuerguesa special 14",
        "Hambiuerguesa special 15",
        "Hambiuerguesa special 16",
        "Hambiuerguesa special 17",
        "Hambiuerguesa special 18",
        "Hambiuerguesa special 19",
        "Hambiuerguesa special 20"
    ]
    
    func obtenHamburguesa( )->String{
        let posicion = Int(arc4random()) % hambuerguesas.count
        return hambuerguesas[posicion]
    }
}