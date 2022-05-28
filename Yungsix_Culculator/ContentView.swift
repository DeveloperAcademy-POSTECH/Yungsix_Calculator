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
        VStack{
            
            Text(result, format: .number)
                .padding()
            
            HStack{
                
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
                                .padding()
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                Spacer()
                        }
                        .frame(width: 130.0, height: 70.0)
                        
                    }
                }
                
                Button {
                    
                } label: {
                    Text(".")
                        .padding()
                        .frame(width: 70, height: 70)
                        .foregroundColor(.white)
                        .background(.gray)
                        .font(.largeTitle)
                        .clipShape(Circle())
                }
                .padding(2.5)
                
                
                OperationBtn(operation: "equal")
                
            }
            .padding(2.5)
            
        }
        
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
