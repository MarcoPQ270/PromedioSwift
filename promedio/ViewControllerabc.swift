//
//  ViewControllerabc.swift
//  promedio
//
//  Created by labdesarrollo5 on 9/3/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewControllerabc: UIViewController {
  var res: Double!
  var nombre: String!
    @IBOutlet weak var lblnombre: UILabel!
    @IBOutlet weak var lblresult: UILabel!
    override func viewDidLoad() {
        lblnombre.text = " \(String(nombre))"
        lblresult.text = "Tu promedio es de: \(String(res))"
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
