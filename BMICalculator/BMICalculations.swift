//
//  BMICalculations.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation



class BMICalculations {
    
    var height: String = ""
    var weight: String = ""
    
    func calculateBmi(weight: Double, height: Double) -> Double {
        return (weight / ((height/100) * (height/100))).rounded(toPlaces: 1)
    }
    
    func lookUpBmiClassification(bmi: Double) -> String {
        if bmi < 18.5 {
            return "Underweight"
        }
        else if bmi < 25 {
            return "Healthy"
        }
        
        else if bmi < 30 {
            return "Overweight"
        }
        
        else {
            return "Obese"
        }
    }
}

