//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vishwa Patel on 3/21/21.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    // Function to convert bmiValue to string and return it
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        // Calculate bmi value
        let bmiValue = weight / pow(height, 2.0)
        
        // Check BMI Value and give advice accordingly
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        

    }
    
    // Function to send backgroundcolor
    func getBackgroundColor() -> UIColor {
        let backgroundColor = bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return backgroundColor
    }
    
    //Function to provide advice
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "No Advice"
        return advice
    }
}
