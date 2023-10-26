//
//  VerExamenViewController.swift
//  Ejercicio2
//
//  Created by Alberto Cano Roca on 26/10/2023.
//

import UIKit

class VerExamenViewController: UIViewController {

    @IBOutlet weak var lbNombre: UILabel!
    
    @IBOutlet weak var lbTotalPregunta: UILabel!
    
    @IBOutlet weak var lbTotalAciertos: UILabel!
    
    @IBOutlet weak var lbNotaFinal: UILabel!
    
    var examen: Examen!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbNombre.text = examen.nombre
        lbTotalPregunta.text = "\(examen.totalPreguntas)"
        lbTotalAciertos.text = "\(examen.totalAcertadas)"
        lbNotaFinal.text = "\(String(examen.notaFinal))"
        
        
        
        
        

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
