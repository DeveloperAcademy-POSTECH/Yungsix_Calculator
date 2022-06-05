//
//  ContentView.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/25.
//

import SwiftUI

struct ContentView: View {
    //스테이트 -> 바인딩으로 넣은 방식.
    @State var stateNum = "0"   // 현재 보여지는 값
    @State var firstNum = "0"   // 전에 입력된 값
    @State var firstOper = "" // 전에 입력된 연산자
    @State var click = false    //연산 버튼 클릭 확인 /지금 사용 안되는중
    var buttonWidth = 75.0
    var buttonHeight = 75.0
    
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
                    Text(stateNum)              // 입력한 숫자 나오는 부분
                        .font(.system(size: 100))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding()
                }.padding(.horizontal, 0)
                
                HStack{
                    Button {                    // AC 버튼
                        if stateNum != "0" {
                            stateNum = "0"
                        }else {
                            firstNum = "0"
                        }
                    } label: {
                        let ac = stateNum == "0" ? "AC" : "C"
                        Text(ac)
                    }
                    .buttonStyle(CalculatorButton())
                    .padding(5)
                    
                    Button {                // +/- 버튼
                        
                    } label: {
                        Image(systemName: "plus.forwardslash.minus")
                            .padding()
                            .frame(width: buttonWidth, height: buttonHeight)
                            .foregroundColor(.black)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(5)
                        
                    Button {                // % 버튼
                        
                    } label: {
                        Text("%")
                            .fontWeight(.medium)
                            .padding()
                            .frame(width: buttonWidth, height: buttonHeight)
                            .foregroundColor(.black)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(5)
                    
                                        // 눕힌% 버튼
                    OperationBtn(stateNum: $stateNum, firstNum: $firstNum, firstOper: $firstOper, operation: "divide")
                }
                
                HStack{                 //버튼 7, 8, 9, X
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                }
                
                HStack{                 //버튼 4, 5, 6, -
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                }
                
                HStack{                 // 버튼 1, 2, 3, +
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    Button("1"){
                        
                    }.buttonStyle(CalculatorButton())
                    
                    
                    OperationBtn(stateNum: $stateNum, firstNum: $firstNum, firstOper: $firstOper, operation: "plus")
                }
                HStack{
                    Button {                // 버튼 0
                        if stateNum != "0" {
                            stateNum += "0"
                        }
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 170.0, height: 80.0)
                                .foregroundColor(Color("numberColor"))
                            HStack{
                                Text("0")
                                    .fontWeight(.medium)
                                    .padding()
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                Spacer()
                            }
                            .frame(width: 140.0, height: 70.0)
                            
                        }
                        .padding(5)
                    }
                    
                    Button {                // 버튼 .
                        
                    } label: {
                        Text(".")
                            .fontWeight(.heavy)
                            .padding()
                            .frame(width: buttonWidth, height: buttonHeight)
                            .foregroundColor(.white)
                            .background(Color("numberColor"))
                            .font(.largeTitle)
                            .clipShape(Circle())
                    }
                    .padding(5)
                                            // 버튼 =
                    OperationBtn(stateNum: $stateNum, firstNum: $firstNum, firstOper: $firstOper, operation: "equal")
                    
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
