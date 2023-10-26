//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Alberto Cano Roca on 26/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtTotalPreguntas: UITextField!
    
    @IBOutlet weak var txtTotalAcertadas: UITextField!
    
    @IBOutlet weak var txtPosicionlista: UITextField!
 
    //Variables para la lógica
    var listaExamenes:[Examen]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listaExamenes = []
    }


    @IBAction func btnInsertarExamen(_ sender: Any) {
        let nombre = txtNombre.text!
        let totalP = txtTotalPreguntas.text!
        let totalA = txtTotalAcertadas.text!
        
        if nombre.isEmpty || totalP.isEmpty || totalA.isEmpty {
            //mostrar error
            alert(titulo: "Error", mensaje: "ioracion")
        }else  {
            //guardar info en list
            listaExamenes.append(Examen(nombre: nombre, totalPreguntas: Int(totalP)!, totalAcertadas: Int(totalA)!));
            
            txtNombre.text = ""
            txtTotalPreguntas.text = ""
            txtTotalAcertadas.text = ""
        }
    }
    
    func alert(titulo: String, mensaje: String) {
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indice = txtPosicionlista.text!
        
        if indice.isEmpty {
            alert(titulo: "Error", mensaje:  "Pon un indice")
        }else {
            if Int(indice)! < 1  || Int(indice)! > listaExamenes.count{
                alert(titulo: "Error", mensaje: "Posicion incorrecta")
            }else{
                if segue.identifier == "VER"{
                    let destino = segue.destination as! VerExamenViewController
                    destino.examen = listaExamenes[Int(indice)! - 1]
                }
            }
            
        }
    }
    
}

