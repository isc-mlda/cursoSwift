//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        velocidad = velocidad.dynamicType.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var velocidadCadena = ""
        switch velocidad {
        case Velocidades.Apagado:
            velocidadCadena = "Apagado"
        case Velocidades.VelocidadBaja:
            velocidadCadena = "Baja"
        case Velocidades.VelocidadMedia:
            velocidadCadena =  "Media"
        case Velocidades.VelocidadAlta:
            velocidadCadena =  "Alta"
        default: ""
        }
        
        return (velocidad.rawValue, "Velocidad \(velocidadCadena)")
    }
}


var auto = Auto()

for i in 1...20{
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual) \(resultado.velocidadEnCadena)")
    
    if auto.velocidad == Velocidades.Apagado {
        auto.velocidad = Velocidades.VelocidadBaja
    } else if auto.velocidad == Velocidades.VelocidadBaja {
        auto.velocidad = Velocidades.VelocidadMedia
    } else if auto.velocidad == Velocidades.VelocidadMedia {
        auto.velocidad = Velocidades.VelocidadAlta
    } else if auto.velocidad == Velocidades.VelocidadAlta {
        auto.velocidad = Velocidades.VelocidadMedia
    }
}

