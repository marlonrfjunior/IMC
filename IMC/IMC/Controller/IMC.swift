//
//  IMC.swift
//  IMC
//
//  Created by Marlon Junior🦈⚓️ on 06/09/21.
//

import UIKit
 
struct IMC{
    var  value: Float?
    let advice: String?
    let  color: UIColor?
    
    init(value: Float) {
        self.value = value
        if value < 18.50 {
            advice = "Coma um pouco mais"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if   value < 24.90{
            advice = "Permaneça da mesma forma"
            color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        }
        else{
            advice = "Pare de comer"
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    func getValue() -> String{
        return String(format: "%.1f",  value ?? 0.00 )
    }
 
    func getColor() -> UIColor{
        return color ?? UIColor.white
    }
    
    func getAdvice() -> String {
        return advice ?? ""
    }
}
