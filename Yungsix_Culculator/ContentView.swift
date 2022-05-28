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
                NumButton(value: 7)
                
                NumButton(value: 8)
                
                NumButton(value: 9)
            }
            
            HStack{
                NumButton(value: 4)
                
                NumButton(value: 5)
                
                NumButton(value: 6)
            }
            
            HStack{
                NumButton(value: 1)
                
                NumButton(value: 2)
                
                NumButton(value: 3)
            }
            HStack{
                Button {
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 140.0, height: 70.0)
                            .foregroundColor(.gray)
                        Text("0")
                            .padding()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                }
                
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
