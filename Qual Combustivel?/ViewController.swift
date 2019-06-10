//
//  ViewController.swift
//  Qual Combustivel?
//
//  Created by Luis Lima on 08/06/2019.
//  Copyright © 2019 Andr3ziim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcool: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    @IBOutlet weak var qualCombustivel: UILabel!
    
    @IBAction func calcularPreco(_ sender: Any) {
        
        view.endEditing(true)
        let valorAlcool: Double
        let valorGasolina: Double
        //let precoA: String = precoAlcool.text
        //let precoG: String = precoGasolina.text
        //if (precoA.isEmpity || precoG.isEmpity)
        
        if (precoAlcool.text == "" || precoGasolina.text == "") {
            qualCombustivel.text = "Digite o Valor dos Combustiveis"
        }else{
            
            valorAlcool = Double(precoAlcool.text!)!
            valorGasolina = Double(precoGasolina.text!)!
            
            if (valorAlcool < (valorGasolina * 0.7)) {
                qualCombustivel.text = "Melhor Abastecer com Alcool"
            }else{
                qualCombustivel.text = "Melhor Abastecer com Gasolina"
            }
        }
        view.endEditing(true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

