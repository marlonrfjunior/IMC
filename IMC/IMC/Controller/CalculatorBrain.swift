//
//  CalculatorBrain.swift
//  IMC
//
//  Created by Marlon Junior🦈⚓️ on 02/09/21.
//

import Foundation

struct CalculatorBrain {
    var imc: String?
    
    
    mutating func generateIMC( height: Float, weight: Float) {
        imc = String(format: "%.1f", (weight / pow(height, 2)))
    }
    func getIMC() -> String {
        return imc!
    }
    
    func getWeightText(value: Float)-> String{
        return String(format: "%.0f", value)
    }
    
    func getHeightText(value: Float)-> String{
        return String(format: "%.2f", value)
    }
}
