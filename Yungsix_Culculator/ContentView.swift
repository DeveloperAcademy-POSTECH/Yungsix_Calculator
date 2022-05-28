//
//  ContentView.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var result: Int = 0
    
    var body: some View {
        ZStack {
            VStack{
                
                HStack{
                    Spacer()
                    Text(result, format: .number)
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                        .padding()
                }.padding(.horizontal, 30.0)
                
                HStack{
                    Button {
                        
                    } label: {
                        Text("AC")
                            .fontWeight(.semibold)
                            .padding()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.white)
                            .background(.gray)
                            .font(.title2)
                            .clipShape(Circle())
                    }
                    .padding(2.5)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.forwardslash.minus")
                            .padding()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.white)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(2.5)
                    Button {
                        
                    } label: {
                        Text("%")
                            .fontWeight(.semibold)
                            .padding()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.white)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(2.5)
                    
                    OperationBtn(operation: "divide")
                }
                
                HStack{
                    NumberBtn(value: 7)
                    
                    NumberBtn(value: 8)
                    
                    NumberBtn(value: 9)
                    
                    OperationBtn(operation: "multiply")
                }
                
                HStack{
                    NumberBtn(value: 4)
                    
                    NumberBtn(value: 5)
                    
                    NumberBtn(value: 6)
                    
                    OperationBtn(operation: "minus")
                }
                
                HStack{
                    NumberBtn(value: 1)
                    
                    NumberBtn(value: 2)
                    
                    NumberBtn(value: 3)
                    
                    OperationBtn(operation: "plus")
                }
                HStack{
                    Button {
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 160.0, height: 70.0)
                                .foregroundColor(.gray)
                            HStack{
                                Text("0")
                                    .fontWeight(.semibold)
                                    .padding()
                                    .foregroundColor(.white)
                                    .font(.title)
                                Spacer()
                            }
                            .frame(width: 130.0, height: 70.0)
                            
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        Text(".")
                            .fontWeight(.black)
                            .padding()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.white)
                            .background(.gray)
                            .font(.title)
                            .clipShape(Circle())
                    }
                    .padding(2.5)
                    
                    
                    OperationBtn(operation: "equal")
                    
                }
                .padding(2.5)
                
                
            }
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
