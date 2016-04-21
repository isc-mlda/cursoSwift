//
//  FirstViewController.swift
//  Pizza
//
//  Created by Martin López Del Angel on 19/04/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var tamanio : String = Tamanio.Chica.rawValue
    var masa : String = Masa.Delgada.rawValue
    var queso : String = Queso.Mozarela.rawValue
    var restart: Bool?
    
    @IBOutlet weak var tamanioSelected: UISegmentedControl!
    @IBOutlet weak var masaSelected: UISegmentedControl!
    @IBOutlet weak var quesoSelected: UISegmentedControl!
    
    enum Tamanio: String{
        case Chica = "Chica", Mediana = "Mediana", Grande = "Grande"
    }
    
    enum Masa : String {
        case Delgada = "Delgada", Crujiente = "Crujiente", Gruesa = "Gruesa"
    }
    
    enum Queso : String {
        case Mozarela = "Mozarela" , Cheddar = "Cheddar", Parmesano = "Parmesano", SinQueso = "Sin Queso"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        inicializarSegmentedControl();
        
    }
    
    func inicializarSegmentedControl(){
        
        tamanio = Tamanio.Chica.rawValue
        masa = Masa.Delgada.rawValue
        queso = Queso.Mozarela.rawValue
        
        configureSegmentedControl(tamanioSelected,tag: 0)
        configureSegmentedControl(masaSelected, tag: 1)
        configureSegmentedControl(quesoSelected, tag: 2)
    }
    
    override func viewWillAppear(animated: Bool) {
        let barViewControllers = self.tabBarController?.viewControllers
        let secondView = barViewControllers![1] as! SecondViewController
        restart = secondView.restart
        
        if (restart != nil && restart!) {
            inicializarSegmentedControl()
            secondView.restart = false
            secondView.inicializarIngredientes()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //envia parametros a siguiente segue (transicion de la vista n a n+1)
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        /*let sigVista = segue.destinationViewController as! SecondViewController
        sigVista.tamanio = tamanio
        sigVista.masa = masa
        sigVista.queso = queso*/
        
        
    }
    
    func configureSegmentedControl(sc : UISegmentedControl, tag : Int){
        sc.tintColor = UIColor.blueColor()
        sc.selectedSegmentIndex = 0
        sc.tag = tag
        sc.addTarget(self, action: #selector(self.selectedSegmentDidChange(_:)), forControlEvents: .ValueChanged)
    }
    
    func selectedSegmentDidChange(segmentedControl: UISegmentedControl) {
        let position = segmentedControl.selectedSegmentIndex
        let tag = segmentedControl.tag
        
        switch tag {
            case 0:
                switch position {
                case 0 : tamanio = Tamanio.Chica.rawValue
                case 1 : tamanio = Tamanio.Mediana.rawValue
                case 2 : tamanio = Tamanio.Grande.rawValue
                default : NSLog("Error en seleccion....!!!")
                }
            case 1:
                switch position {
                case 0 : masa = Masa.Delgada.rawValue
                case 1 : masa = Masa.Crujiente.rawValue
                case 2 : masa = Masa.Gruesa.rawValue
                default : NSLog("Error en seleccion....!!!")
                }
            case 2:
                switch position {
                case 0 : queso = Queso.Mozarela.rawValue
                case 1 : queso = Queso.Cheddar.rawValue
                case 2 : queso = Queso.Parmesano.rawValue
                case 3 : queso = Queso.SinQueso.rawValue
                default : NSLog("Error en seleccion....!!!")
                }
            default: NSLog("Error en seleccion....!!!")
        }
        
        NSLog("Tamaño: \(tamanio) Masa: \(masa) Queso: \(queso)")
        
        
    }
    
}

