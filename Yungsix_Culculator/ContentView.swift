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
                
                OperButton(operation: "divide")
            }
            
            HStack{
                NumButton(value: 7)
                
                NumButton(value: 8)
                
                NumButton(value: 9)
                
                OperButton(operation: "multiply")
            }
            
            HStack{
                NumButton(value: 4)
                
                NumButton(value: 5)
                
                NumButton(value: 6)
                
                OperButton(operation: "minus")
            }
            
            HStack{
                NumButton(value: 1)
                
                NumButton(value: 2)
                
                NumButton(value: 3)
                
                OperButton(operation: "plus")
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
                
                
                OperButton(operation: "equal")
                
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
