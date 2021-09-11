//
//  CalculatorBrain.swift
//  IMC
//
//  Created by Marlon Junior🦈⚓️ on 02/09/21.
//

import UIKit

struct CalculatorBrain {
    var imc: IMC?
    
    
    mutating func generateIMC( height: Float, weight: Float) {
        imc = IMC(value: weight / pow(height, 2))
    }
    
    func getIMC() -> IMC {
        return imc ?? IMC(value: 0.00)
    }
    
    func getWeightText(value: Float)-> String{
        return String(format: "%.0f", value)
    }
    
    func getHeightText(value: Float)-> String{
        return String(format: "%.2f", value)
    }
}
