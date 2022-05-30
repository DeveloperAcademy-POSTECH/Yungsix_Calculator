//
//  ContentView.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var result = "0"
    @State var firstNum = "0"
    
    var body: some View {                          
        ZStack {
            VStack{
                Spacer()
                
                HStack{
                    Spacer()
                    Text(result)
                        .font(.system(size: 100))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding()
                }.padding(.horizontal, 0)
                
                HStack{
                    Button {
                        
                    } label: {
                        Text("AC")
                            .fontWeight(.medium)
                            .padding()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.black)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(5)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.forwardslash.minus")
                            .padding()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.black)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(5)
                        
                    Button {
                        
                    } label: {
                        Text("%")
                            .fontWeight(.medium)
                            .padding()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.black)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(5)
                    
                    OperationBtn(operation: "divide")
                }
                
                HStack{
                    NumberBtn(value: "7", result: $result)
                    
                    NumberBtn(value: "8", result: $result)
                    
                    NumberBtn(value: "9", result: $result)
                    
                    OperationBtn(operation: "multiply")
                }
                
                HStack{
                    NumberBtn(value: "4", result: $result)
                    
                    NumberBtn(value: "5", result: $result)
                    
                    NumberBtn(value: "6", result: $result)
                    
                    OperationBtn(operation: "minus")
                }
                
                HStack{
                    NumberBtn(value: "1", result: $result)
                    
                    NumberBtn(value: "2", result: $result)
                    
                    NumberBtn(value: "3", result: $result)
                    
                    OperationBtn(operation: "plus")
                }
                HStack{
                    Button {
                        if result != "0" {
                            result += "0"
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
                    
                    Button {
                        
                    } label: {
                        Text(".")
                            .fontWeight(.heavy)
                            .padding()
                            .frame(width: 75, height: 75)
                            .foregroundColor(.white)
                            .background(Color("numberColor"))
                            .font(.largeTitle)
                            .clipShape(Circle())
                    }
                    .padding(5)
                    
                    
                    OperationBtn(operation: "equal")
                    
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
