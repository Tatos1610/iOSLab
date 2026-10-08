//
//  ViewController.swift
//  Ejercicio2
//
//  Created by Facultad Contaduría y Administración on 24/09/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let alfabeto = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    var indiceActual = 5
    
    @IBAction func botonExistentePresionado(_ sender: UIButton) {
            // Obtiene el texto del botón presionado (ej: "A" o "Botón A")
            let texto = sender.title(for: .normal) ?? ""
            performSegue(withIdentifier: "segueDetalle", sender: texto)
        }
        
        // Conecta esta acción al botón "Agregar" en el Storyboard
        @IBAction func agregarBotonPresionado(_ sender: UIButton) {
            guard indiceActual < alfabeto.count else {
                sender.isEnabled = false // Desactiva el botón si ya llegó a la 'Z'
                return
            }
            
            let letra = String(alfabeto[indiceActual])
            indiceActual += 1
            
            // Crear el nuevo botón dinámico (a partir de la F)
            let nuevoBoton = UIButton(type: .system)
            nuevoBoton.setTitle("Botón \(letra)", for: .normal) // Ajusta el formato si solo quieres la letra
            nuevoBoton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
            nuevoBoton.backgroundColor = .systemBlue
            nuevoBoton.setTitleColor(.white, for: .normal)
            nuevoBoton.layer.cornerRadius = 8
            nuevoBoton.heightAnchor.constraint(equalToConstant: 44).isActive = true
            
            // Acción al tocar el botón nuevo
            nuevoBoton.addAction(UIAction { [weak self] _ in
                self?.performSegue(withIdentifier: "segueDetalle", sender: nuevoBoton.title(for: .normal))
            }, for: .touchUpInside)
            
            // Agregar al UIStackView existente
            stackLabels.addArrangedSubview(nuevoBoton)
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "segueDetalle",
               let vc = segue.destination as? ViewControllerDetalle,
               let texto = sender as? String {
                vc.titulo = texto
            }
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewControllerDetalle{
            switch segue.identifier{
            case "segueA": vc.titulo = "A"
            case "segueB": vc.titulo = "B"
            case "segueC": vc.titulo = "C"
            case "segueD": vc.titulo = "D"
            case "segueE": vc.titulo = "E"
            default: break
            }
        }
    }

}

