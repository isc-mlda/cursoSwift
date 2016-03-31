//
//  ViewController.swift
//  MasFeliz
//
//  Created by Martin López Del Angel on 28/03/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mensajePositivo: UILabel!
    let colores = Colores()
    let frases = Frases()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnMensajePositivo() {
        print("Esto sera muy positivo")
        mensajePositivo.text = "Hoy es un dia muy bonito!!"
        
        let colorAleatorio = colores.regresaColorAleatorio();
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
        
        mensajePositivo.text = frases.regresaFraseAleatorio()
    }

    
}

