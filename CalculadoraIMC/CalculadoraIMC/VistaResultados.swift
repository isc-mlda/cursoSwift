//
//  VistaResultados.swift
//  CalculadoraIMC
//
//  Created by Martin López Del Angel on 11/04/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import UIKit

class VistaResultados: UIViewController {

    var indiceMC : Double = 0
    @IBOutlet weak var lblResultadoIMC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblResultadoIMC.text = String(indiceMC)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
