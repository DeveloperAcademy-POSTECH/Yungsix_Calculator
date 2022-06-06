//
//  CalculatorModel.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/06/06.
//

import Foundation

class CalculatorModel : ObservableObject {
    
    @Published var result = "0"
    var first = ""
    var second = ""
    var operation = ""
    
    func inputButton(button: ButtonName) {
        
        if button.title == "plus" {
            
        }else if button.title == "minus" {

        }else if button.title == "multiply" {

        }else if button.title == "divide"{

        }else if button.title == "plus.forwardslash.minus" {
            
        }else if button.title == "percent" {
            
        }else if button.title == "AC" {
            
        }else if button.title == "." {
            
        }else if button.title == "=" {
            
        }else {
            
        }
        
        
        
    }
}
