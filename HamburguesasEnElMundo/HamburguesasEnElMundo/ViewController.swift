//
//  ViewController.swift
//  HamburguesasEnElMundo
//
//  Created by Martin López Del Angel on 31/03/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!
    let pais = ColeccionDePaises()
    let hamburguesa = ColeccionDeHamburguesas()
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnObtenerHamburguesa() {
        lblHamburguesa.text = hamburguesa.obtenHamburguesa()
        lblPais.text = pais.obtenPais()
        
        let colorAleatorio = colores.regresaColorAleatorio();
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
        
        //
    }
    
    
}

