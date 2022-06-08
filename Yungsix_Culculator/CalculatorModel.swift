//
//  CalculatorModel.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/06/06.
//

import Foundation

class CalculatorModel : ObservableObject {
    
    @Published var result = "0"
    
    var arr = [String]()
    
    var first = ""
    var second = ""
    var operation = ""
    
    func inputNumber(button: ButtonName) {              // 숫자 입력 함수
        
        if result == "0"{
            result = button.title
            arr.append(button.title)
        }else {
            result += button.title
        }
        
    }
    
    func inputOperaiton(button: ButtonName) {           // 연산자 입력 함수
    
        first = result
        operation = button.title
        
        if button == .plus {
            
        }else if button == .minus {
                        
        }else if button == .div {
            
        }else if button == .mul {
            
        }else if button == .mark {
            
        }else if button == .percent {
            
        }else if button == .clear {
            result = "0"
        }else if button == .dot {
            
        }else if button == .equal {
            
        }
        
    }
    
}
