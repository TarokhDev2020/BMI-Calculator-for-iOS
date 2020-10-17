//
//  BMICalculator.swift
//  BMICalculator
//
//  Created by Tarokh on 8/1/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import UIKit


struct BMICalculator {
    
    // define some variables
    var bmi: BMI?
    
    // define some functions
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            self.bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.1052683666, green: 0.6784334183, blue: 0.9730395675, alpha: 1))
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Unable to calculate"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    }
    
}
