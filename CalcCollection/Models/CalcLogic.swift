//
//  File.swift
//  CalcCollection
//
//  Created by Valentin on 06.03.2024.
//

final class Calc {
    
    func calc(_ operandFirst: Double, _ operation: String, _ operandSecond: Double) -> Double {
        var result = 0.0
        
        switch operation{
        case "+": result = operandFirst + operandSecond
        case "-": result = operandFirst - operandSecond
        case "x", "*": result = operandFirst * operandSecond
        case ":", "/": result = operandFirst / operandSecond
        default: result = 0
        }
        
        return result
    }
}
