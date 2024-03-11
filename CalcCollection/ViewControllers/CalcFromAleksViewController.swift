//
//  ViewController.swift
//  CalcCollection
//
//  Created by Valentin on 05.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var result: UILabel!
    var number = 0.0
    var firstNumber = 0.0
    var operationNumber = 0
    var mathButton: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttons(_ sender: UIButton) {
        if mathButton == true {
            result.text = String(sender.tag)
            mathButton = false
        }
        else {
            result.text = (result.text ?? "0") + String(sender.tag)
        }
        number = Double(result.text!)!
    }
    
    //тэги кнопок "="10, +11, -12, х13, /14, %15, +/-16, С17
    @IBAction func actionButtons(_ sender: UIButton) {
        if result.text != "0" {
            firstNumber = Double(result.text!)!
            
            if sender.tag == 11 {
                result.text = "+"
            }
            operationNumber = sender.tag
            mathButton = true
            
        } else if sender.tag == 10 {
            if operationNumber == 11 {
                result.text = String(firstNumber + number)
            }
                
        }
        
    }
}

