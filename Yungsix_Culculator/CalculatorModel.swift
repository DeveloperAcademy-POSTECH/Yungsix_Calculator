//
//  CalculatorModel.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/06/06.
//

import Foundation

class CalculatorModel : ObservableObject {
    
    @Published var result = "0"
    let secondResult = ""
    
    var first = ""
    var second = ""
    var operation: ButtonName?
    var operCheck = false
    
    func inputNumber(button: ButtonName) {              // 숫자 입력 함수
        
        if operation != nil && operCheck {              // 연산자가 입력되었으면
            operCheck = false
            first = result
            result = ""
        }
        
        if result == "0" || result == "" {
            result = button.title
            return
        }else {
            result += button.title
            return
        }
        
    }
    
    func inputOperaiton(button: ButtonName) {           // 연산자 입력 함수
        
        if button == .percent {
            result = String(Double(result)! / 100.0)
            return
        }else if button == .clear {
            result = "0"
            first = ""
            second = ""
            operation = nil
            return
        }
        
        if first == "" {
            first = result
            operCheck = true
            operation = button
            return
        }
        
        
        if operation == .plus {
            let sum = Double(first)! + Double(result)!
            operation = button
            result = String(format: "%.f", sum)
            operCheck = true
            
        }else if operation == .minus {
            let min = Double(first)! - Double(result)!
            operation = button
            result = String(format: "%.f", min)
            operCheck = true
            
        }else if operation == .div {
            
        }else if operation == .mul {
            
        }else if operation == .mark {
            
        }else if operation == .dot {
            
        }else if button == .equal {
            operation = nil
        }
        
    }
    
}
