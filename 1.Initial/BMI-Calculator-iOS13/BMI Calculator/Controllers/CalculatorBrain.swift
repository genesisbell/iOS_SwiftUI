//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Genesis on 9/2/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMI() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / pow(height, 2)
        let advice: String
        let color: UIColor
        if bmiValue < 18.5 {
            advice = "Eat more snacks"
            color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        }else if bmiValue < 24.9 {
            advice = "You are in good health"
            color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        }else{
            advice = "Eat more vegetables"
            color = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        
    }
}
