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
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        let retorno = (actual:velocidad.rawValue, velocidadEnCadena:String(velocidad))
        
        if(velocidad==Velocidades.VelocidadAlta){
            velocidad=Velocidades.VelocidadMedia
            
        }else if(velocidad==Velocidades.VelocidadMedia){
            velocidad=Velocidades.VelocidadAlta
            
        }else if(velocidad==Velocidades.VelocidadBaja){
            velocidad=Velocidades.VelocidadMedia
            
        }else if(velocidad==Velocidades.Apagado){
            velocidad=Velocidades.VelocidadBaja
        }
        
        return retorno
    }
}


var auto = Auto()
var a = Velocidades(velocidadInicial: .Apagado)

for i in 1...20{
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual) \(resultado.velocidadEnCadena)")
}

