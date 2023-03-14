//
//  ViewController.swift
//  proyIntermedio
//
//  Created by Miguel Gómez Díaz on 13/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nombreTxt: UITextField!
    
    @IBAction func onClic(_ sender: Any) {
        performSegue(withIdentifier: "irCodigo", sender: self)
        
        let sentencia:String = "5*20"
        let exp:NSExpression = NSExpression(format: sentencia)
        let resultado:Double = exp.expressionValue(with: nil, context: nil) as! Double
        
        print(resultado)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let envioUno = segue.destination as? ViewController2 else{return}
        
        envioUno.name = nombreTxt.text
    }
    
}

