//
//  CalcTextFieldValVC.swift
//  CalcCollection
//
//  Created by Valentin on 11.03.2024.
//

import UIKit

class CalcTextFieldValVC: UIViewController {

    @IBOutlet weak var operandFirstTF: UITextField!
    @IBOutlet weak var operandSecondTF: UITextField!
    @IBOutlet weak var actionTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = ""
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        let operandFirst = Double(operandFirstTF.text ?? "0") ?? 0.0
        let operandSecond = Double(operandSecondTF.text ?? "0") ?? 0.0

        let result = Calc().calc(operandFirst, actionTF.text ?? ".", operandSecond)
        resultLabel.text = String(result)
    }
}
