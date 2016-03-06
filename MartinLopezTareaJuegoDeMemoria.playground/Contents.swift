//: Playground - noun: a place where people can play

import UIKit

var nums = 0...100
var cadena:String
for i in nums{
    cadena = "\(i)"
    if i%5 == 0{
        cadena = "\(cadena) Bingo!!!"
    }
    if i%2 == 0{
        cadena = "\(cadena) Es Número par!!!"
    }
    if i%2 != 0{
        cadena = "\(cadena) Es Número Impar!!!"
    }
    switch i {
    case 30...40: cadena = "\(cadena) ¡Viva Swift!"
    default: ""
    }
    
    print(cadena)
}
