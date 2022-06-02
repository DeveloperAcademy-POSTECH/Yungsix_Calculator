//
//  operButton.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/28.
//

import SwiftUI

struct OperationBtn: View {
    @State var click = false
    @Binding var stateNum: String       // 현재 입력된 값
    @Binding var firstNum: String       // 전에 입력된 값
    @Binding var firstOper: String      // 전에 입력한 연산자
    var operation: String               // 현재 입력한 연산자
    
    var body: some View {
        HStack{
            Button {            // 연산자 버튼
                oper(operation: operation, firstOper: firstOper)
                click.toggle()
            } label: {
                Image(systemName: operation)
                    .padding()
                    .frame(width: 75, height: 75)
                    .foregroundColor(click ? .orange : .white)
                    .background(click ? .white : .orange)
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
        OperationBtn(stateNum: .constant("0"), firstNum: .constant("0"), firstOper: .constant("divide") ,operation: "divide" )
    }
}
