//
//  NumButton.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/27.
//

import SwiftUI

struct NumberBtn: View {                // 숫자 버튼
    var value: String
    @Binding var result: String
    
    var body: some View {
        HStack{
            Button {
                if result == "0" {
                    result = value
                }else {
                    result += value
                }
                
            } label: {
                Text("\(value)")
                    .fontWeight(.medium)
                    .padding()
                    .frame(width: 75, height: 75)
                    .foregroundColor(.white)
                    .background(Color("numberColor"))
                    .font(.largeTitle)
                    .clipShape(Circle())
            }
            .padding(5)
        }
    }
}

struct NumberBtn_Previews: PreviewProvider {
    static var previews: some View {
        NumberBtn(value: "1", result: .constant("0"))
    }
}
