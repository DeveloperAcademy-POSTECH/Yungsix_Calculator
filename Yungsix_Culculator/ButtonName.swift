//
//  ButtonName.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/06/04.
//

import Foundation
import SwiftUI

//모든 버튼을 한번에 처리
//각각의 버튼 스타일 지정.
enum ButtonName: String {
    case zero = "0", one = "1", two = "2", three = "3", four = "4", five = "5", six = "6",
         seven = "7", eight = "8", nine = "9", dot = "."
    case plus = "plus", minus = "minus", mul = "multiply", div = "divide", equal = "equal"
    case clear = "AC", mark = "plus.forwardslash.minus", percent = "percent"
    
    
    var title: String { self.rawValue }
    
    var backgroundColor: Color {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .dot:
            return Color("numberColor")
        case .clear, .mark, .percent:
            return Color(.gray)
        default :
            return Color(.orange)
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .plus, .minus, .mul, .div, .equal:
            return Color(.white)
        case .clear, .mark, .percent:
            return Color(.black)
        default :
            return Color(.white)
        }
    }
    
    var fontStyle: Font {
        switch self {
        case .clear:
            return Font.title
        case .plus, .minus, .mul, .div, .equal, .percent, .mark:
            return Font.system(size: 30, weight: .bold)
        default:
            return Font.largeTitle
        }
    }
    
}
