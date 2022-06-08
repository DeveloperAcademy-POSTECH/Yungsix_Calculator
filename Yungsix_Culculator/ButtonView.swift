//
//  ButtonView.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/06/05.
//

import SwiftUI

struct ButtonView: View {
    
    var title: CalculatorModel
    var button: ButtonName
    
    var body: some View {
        switch button {
        case .zero:
            return AnyView(Button {                // 버튼 0
                title.inputNumber(button: button)
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 170.0, height: 75.0)
                        .foregroundColor(button.backgroundColor)
                    HStack{
                        Text(button.title)
                            .fontWeight(.medium)
                            .padding()
                            .foregroundColor(button.foregroundColor)
                            .font(button.fontStyle)
                        Spacer()
                    }
                    .frame(width: 140.0, height: 75.0)
                    
                }.padding(5)
            })
        case .plus, .minus, .div, .mul, .mark, .percent, .equal:
            return AnyView(
                Button {                        // 연산자 버튼
                    title.inputOperaiton(button: button)
                } label: {
                    Image(systemName: button.title)
                        .padding()
                        .frame(width: 75, height: 75)
                        .foregroundColor(button.foregroundColor)
                        .background(button.backgroundColor)
                        .font(button.fontStyle)
                        .clipShape(Circle())
                }.padding(5))
            
        default :
            return AnyView(Button {             //숫자 버튼
                if button == .clear{
                    title.inputOperaiton(button: button)
                }else {
                    title.inputNumber(button: button)
                }
            } label: {
                Text(button.title)
                    .fontWeight(.medium)
                    .padding()
                    .frame(width: 75, height: 75)
                    .foregroundColor(button.foregroundColor)
                    .background(button.backgroundColor)
                    .font(button.fontStyle)
                    .clipShape(Circle())
            }.padding(5))
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: CalculatorModel(), button: .clear)
    }
}
