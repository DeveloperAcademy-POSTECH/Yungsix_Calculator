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
                    Spacer()
                    Text(text.result)              // 입력한 숫자 나오는 부분
                        .font(.system(size: 100))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding()
                }.padding(.horizontal, 0)
                
                ForEach(buttons, id: \.self) { row in
                    HStack{
                        ForEach(row, id: \.self) { button in
                            ButtonView(button: button)
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

struct CalculatorButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .frame(width: 75, height: 75)
            .background(Color("numberColor"))
            .clipShape(Circle())
            
            
    }
    
}
