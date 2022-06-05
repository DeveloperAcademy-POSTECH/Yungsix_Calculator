//
//  ButtonView.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/06/05.
//

import SwiftUI

struct ButtonView: View {
    
    var button: ButtonName
    
    var body: some View {
        if button == .zero{
            Button {                // 버튼 0
                
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
        }else {
            Button {
                
            } label: {
                Text(button.title)
                    .fontWeight(.medium)
                    .padding()
                    .frame(width: 75, height: 75)
                    .foregroundColor(.white)
                    .background(button.backgroundColor)
                    .font(.largeTitle)
                    .clipShape(Circle())
            }
        }
    }
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(button: .plus)
    }
}
