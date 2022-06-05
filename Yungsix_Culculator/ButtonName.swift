//
//  ButtonName.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/06/04.
//

import Foundation
import SwiftUI

enum ButtonName: String {
    case zero, one, two, three, four, five, six, seven, eight, nine, dot
    case plus, minus, mul, div, equal
    case clear, mark, percent
    
    var title: String {
        switch self {
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .dot: return "."
        case .plus: return "plus"
        case .minus: return "minus"
        case .mul : return "multiply"
        case .div : return "divide"
        case .equal: return "equal"
        case .mark: return "plus.forwardslash.minus"
        case .percent: return "percent"
        default: return "AC"
        }
    }
    
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
