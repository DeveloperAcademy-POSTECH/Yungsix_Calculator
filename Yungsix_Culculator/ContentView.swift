//
//  ContentView.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var text = CalculatorModel()   // 디스플레이에 보여주는 값
    
    let buttons: [[ButtonName]] = [
        [.clear, .mark, .percent, .div],
        [.seven, .eight, .nine, .mul],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .dot, .equal]
    ]
    
    var body: some View {                          
        ZStack {
            VStack{
                Spacer()
                HStack{
                    Text(text.result)              // 입력한 숫자 나오는 부분
                        .font(.system(size: 100))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .minimumScaleFactor(0.2)
                        .lineLimit(1)
                        .frame(width: 320,alignment: .bottomTrailing)
                        .padding()
                }.padding(.horizontal)
                
                ForEach(buttons, id: \.self) { row in
                    HStack{
                        ForEach(row, id: \.self) { button in
                            ButtonView(title: text, button: button)
                        }
                    }
                }
            }
            .padding(50.0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .edgesIgnoringSafeArea(.all)
        
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
