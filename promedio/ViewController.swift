//
//  ViewController.swift
//  promedio
//
//  Created by labdesarrollo5 on 9/3/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var nombre: String = ""
    var cal1: Double = 0.0
    var cal2: Double = 0.0
    var cal3: Double = 0.0
    var cal4: Double = 0.0
    var res: Double = 0.0
    @IBOutlet weak var txtnombre: UITextField!
    @IBOutlet weak var txtcal1: UITextField!
    @IBOutlet weak var txtcal2: UITextField!
    @IBOutlet weak var txtcal3: UITextField!
    @IBOutlet weak var txtcal4: UITextField!
    @IBAction func btncalcular(_ sender: UIButton) {
        
        if (txtnombre.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Tu campo de nombre es vacio")
            
        }else if(txtcal1.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Tu campo de cal1 es vacio")
            
        }else if(txtcal2.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Tu campo de cal2 es vacio")
            
        }else if(txtcal3.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Tu campo de cal3 es vacio")
            
        }else if(txtcal4.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Tu campo de cal4 es vacio")
            
        }else{
            nombre = String(txtnombre.text!)
            cal1 = Double(txtcal1.text!)!
            cal2 = Double(txtcal2.text!)!
            cal3 = Double(txtcal3.text!)!
            cal4 = Double(txtcal4.text!)!
            res = (cal1+cal2+cal3+cal4)/4
            //showAlerta(titulo: "cal", mensaje: "resiltado\(res)")
            
        }
    }
    
    
    func showAlerta(titulo: String, mensaje: String){
        //Crea La Alerta
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        //Agregar Un Boton
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        //Muestra El Alerta
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueprom"){
            let segueprom = segue.destination as! ViewControllerabc
            segueprom.res = res
             segueprom.nombre = nombre
            
        }
    }
    

}

