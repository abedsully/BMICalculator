//
//  CalculatingBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Stefanus Albert Wilson on 8/15/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

struct CalculatingBrain{
    
    var bmi: BMI?
    
    func getBMIValue()->String{
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1Decimal
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / powf(height, 2)
        
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat More Foods!", color: #colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 1))
        }
        
        else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Chill Out!", color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        }
        
        else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Foods!", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        }
        
    }
    
    
}
