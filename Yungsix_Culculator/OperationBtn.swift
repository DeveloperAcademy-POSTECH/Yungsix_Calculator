//
//  operButton.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/28.
//

import SwiftUI

struct OperationBtn: View {
    @Binding var stateNum: String
    @Binding var firstNum: String
    @Binding var firstOper: String
    var operation: String

    var body: some View {
        HStack{
            Button {
                oper(operation: operation, firstOper: firstOper)
            } label: {
                Image(systemName: operation)
                    .padding()
                    .frame(width: 75, height: 75)
                    .foregroundColor(.white)
                    .background(.orange)
                    .font(.largeTitle)
                    .clipShape(Circle())
            }
            .padding(5)
        }
    }
    
    func oper(operation: String, firstOper: String) {
        switch operation {
        case "plus":
            firstNum = "\(Int(firstNum)! + Int(stateNum)!)"
            print(firstNum)
            stateNum = "0"
            break
        case "minus":
            firstNum = "\(Int(firstNum)! - Int(stateNum)!)"
            print(firstNum)
            stateNum = "0"
            break
        case "multiply":
            stateNum = "\(Int(firstNum)! * Int(stateNum)!)"
            break
        case "divide":
            stateNum = "\(Int(firstNum)! / Int(stateNum)!)"
            break
        case "equal":
            // 오류 많음
            print(firstNum)
            switch firstOper {
            case "plus":
                stateNum = "\(Int(firstNum)! + Int(stateNum)!)"
                firstNum = "0"
                break
            case "minus":
                stateNum = "\(Int(firstNum)! - Int(stateNum)!)"
                firstNum = "0"
                break
            case "multiply":
                stateNum = "\(Int(firstNum)! * Int(stateNum)!)"
                firstNum = "0"
                break
            case "divide":
                stateNum = "\(Int(firstNum)! / Int(stateNum)!)"
                firstNum = "0"
                break
            default:
                break
            }
            
            break
        default:
            break
        }
    }
}

struct OperationBtn_Previews: PreviewProvider {
    static var previews: some View {
        OperationBtn(stateNum: .constant("0"), firstNum: .constant("0"), firstOper: .constant("divide") ,operation: "divide")
    }
}
