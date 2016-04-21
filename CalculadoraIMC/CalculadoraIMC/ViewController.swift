//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Martin López Del Angel on 08/04/16.
//  Copyright © 2016 Martin López Del Angel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtEstatura: UITextField!
    @IBOutlet weak var scrlScroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtPeso.delegate=self
        txtEstatura.delegate=self
    }

    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var punto:CGPoint
        punto = CGPointMake(0, textField.frame.origin.y-50)
        self.scrlScroll.setContentOffset(punto, animated: true)
    }
    
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scrlScroll.setContentOffset(CGPointZero, animated: true)
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder() //desaparece el teclado
    }
    
    @IBAction func backgroundTap(sender: UIControl){
        txtPeso.resignFirstResponder()
        txtEstatura.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCalcularIMC(sender: AnyObject) {
        imc()
    }
    
    func imc()->Double{
        var imc : Double
        let pesoLocal :Double?
        pesoLocal = Double(self.txtPeso.text!)!
        let estaturaLocal : Double = Double(self.txtEstatura.text!)!
        imc = pesoLocal!/(estaturaLocal*estaturaLocal)
        print("Resultado \(imc)")
        return imc
    }

    //antes de ir a sig. vista prepara inf.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = imc()
        let sigVista = segue.destinationViewController as! VistaResultados
        sigVista.indiceMC = resultado
        
    }
    
}

