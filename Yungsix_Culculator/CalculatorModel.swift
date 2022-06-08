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
    var operation: ButtonName?
    var operCheck = false
    
    func inputNumber(button: ButtonName) {              // 숫자 입력 함수
        
        if operation != nil && operCheck {              // 연산자가 입력되었으면
            operCheck = false                           // 문자열을 계속 입력받게 확인
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
        }else if button == .mark {
            result = String(format: "%.f", Double(result)! - Double(result)! * 2)
            return
        }else if button == .dot {
            result += "."
            return
        }
        
        if first == "" {                                // = 클릭하지 않고 계속 연산할 경우.
            first = result
            operCheck = true
            operation = button
            return
        }
        
        if operation == .plus{
            let sum = Double(first)! + Double(result)!
            operation = button
            result = String(sum)
            operCheck = true
            return
        }else if operation == .minus {
            let min = Double(first)! - Double(result)!
            operation = button
            result = String(min)
            operCheck = true
            return
        }else if operation == .div {
            let div = Double(first)! / Double(result)!
            operation = button
            result = String(div)
            operCheck = true
            return
        }else if operation == .mul {
            let mul = Double(first)! * Double(result)!
            operation = button
            result = String(mul)
            operCheck = true
            return
        }
        
        
    }
    
    //
}


