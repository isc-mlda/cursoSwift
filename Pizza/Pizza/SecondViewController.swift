//
//  SecondViewController.swift
//  Pizza
//
//  Created by Martin López Del Angel on 19/04/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var swAceituna: UISwitch!
    @IBOutlet weak var swCebolla: UISwitch!
    @IBOutlet weak var swPimiento: UISwitch!
    @IBOutlet weak var swPiña: UISwitch!
    @IBOutlet weak var swAnchoa: UISwitch!
    @IBOutlet weak var swChorizo: UISwitch!
    @IBOutlet weak var swQuesoExtra: UISwitch!
    @IBOutlet weak var swJamon: UISwitch!
    @IBOutlet weak var swPepperoni: UISwitch!
    @IBOutlet weak var swPavo: UISwitch!
    @IBOutlet weak var swSalchicha: UISwitch!
    @IBOutlet weak var btnAgregarOrden: UIButton!
    var ingredientesList : [String]? =  [String]()
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var restart : Bool = false
    
    enum Ingredientes : String {
        case Aceituna = "Aceituna", Cebolla = "Cebolla", Pimiento = "Pimiento", Pinia = "Piña", Anchoa = "Anchoa", Chorizo = "Chorizo", QuesoExtra = "Queso Extra", Jamon = "Jamon", Pepperoni = "Pepperoni", Pavo = "Pavo", Salchicha = "Salchicha"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inicializarIngredientes()
        
    }
    
    func inicializarIngredientes(){
        btnAgregarOrden.enabled = false;
        configureDefaultSwitch(swAceituna, tag: 0 )
        configureDefaultSwitch(swCebolla, tag: 1)
        configureDefaultSwitch(swPimiento, tag: 2)
        configureDefaultSwitch(swPiña, tag: 3)
        configureDefaultSwitch(swAnchoa, tag: 4)
        configureDefaultSwitch(swChorizo, tag: 5)
        configureDefaultSwitch(swQuesoExtra, tag: 6)
        configureDefaultSwitch(swJamon, tag: 7)
        configureDefaultSwitch(swPepperoni, tag: 8)
        configureDefaultSwitch(swPavo, tag: 9)
        configureDefaultSwitch(swSalchicha, tag: 9)
        
        
        let barViewControllers = self.tabBarController?.viewControllers
        let fistView = barViewControllers![0] as! FirstViewController
        tamanio = fistView.tamanio
        masa = fistView.masa
        queso = fistView.queso
        
        ingredientesList?.removeAll()
    }
    
    //en caso de tener que inicializar componentes de la vista 1.
    override func viewWillAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    
    func configureDefaultSwitch(defaultSwitch:UISwitch, tag: Int) {
        defaultSwitch.setOn(false, animated: false)
        defaultSwitch.tag = tag
        defaultSwitch.addTarget(self, action: #selector(self.switchValueDidChange(_:)), forControlEvents: .ValueChanged)
    }
    
    func switchValueDidChange(aSwitch: UISwitch) {
        if aSwitch.on {
            ingredientesList!.append(obtieneIngrediente(aSwitch.tag))
        } else {
            ingredientesList?.removeAtIndex(ingredientesList!.indexOf(obtieneIngrediente(aSwitch.tag))!)
        }
        
        if ingredientesList?.count > 0 && ingredientesList?.count < 6 {
            btnAgregarOrden.enabled = true;
        }else{
            btnAgregarOrden.enabled = false;
        }
        
       NSLog("Lista de ingredientes: \(ingredientesList)")
        
    }
    
    func obtieneIngrediente(opcion : Int) -> String{
        var ingrediente : String?
        switch opcion {
        case 0:ingrediente = Ingredientes.Aceituna.rawValue
        case 1:ingrediente = Ingredientes.Cebolla.rawValue
        case 2:ingrediente = Ingredientes.Pimiento.rawValue
        case 3:ingrediente = Ingredientes.Pinia.rawValue
        case 4:ingrediente = Ingredientes.Anchoa.rawValue
        case 5:ingrediente = Ingredientes.Chorizo.rawValue
        case 6:ingrediente = Ingredientes.QuesoExtra.rawValue
        case 7:ingrediente = Ingredientes.Jamon.rawValue
        case 8:ingrediente = Ingredientes.Pepperoni.rawValue
        case 9:ingrediente = Ingredientes.Pavo.rawValue
        case 10:ingrediente = Ingredientes.Salchicha.rawValue
        default:
            NSLog("Error!!!.")
        }
        
        return ingrediente!
    }
    
    
    /// Show an alert with an "Okay" and "Cancel" button.
    func showOkayCancelAlert() {
        let title = NSLocalizedString("Solicitar pizza", comment: "")
        let message = NSLocalizedString("Pizza: \(tamanio) \nMasa:\(masa) \nQueso: \(queso) \nIngresientes: \(ingredientesList!)", comment: "")
        let cancelButtonTitle = NSLocalizedString("Cancel", comment: "")
        let otherButtonTitle = NSLocalizedString("OK", comment: "")
        
        let alertCotroller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        // Create the actions.
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel) { _ in
            NSLog("The \"Okay/Cancel\" alert's cancel action occured.")
        }
        
        let otherAction = UIAlertAction(title: otherButtonTitle, style: .Default) { _ in
            self.showSimpleAlert()
            self.restart = true
            let tababarController = (self.tabBarController)! as UITabBarController
            tababarController.selectedIndex = 0
            
        }
        
        // Add the actions.
        alertCotroller.addAction(cancelAction)
        alertCotroller.addAction(otherAction)
        
        presentViewController(alertCotroller, animated: true, completion: nil)
    }
    
    func showSimpleAlert() {
        let title = NSLocalizedString("Pizza", comment: "")
        let message = NSLocalizedString("Pizza Lista.", comment: "")
        let cancelButtonTitle = NSLocalizedString("OK", comment: "")
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        // Create the action.
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel) { action in
            NSLog("The simple alert's cancel action occured.")
        }
        
        // Add the action.
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }

    
    
    
    @IBAction func agregarOrden(sender: AnyObject) {
        showOkayCancelAlert()
    }

}

