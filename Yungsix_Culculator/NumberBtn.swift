//
//  NumButton.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/27.
//

import SwiftUI

struct NumberBtn: View {
    var value: Int
    
    var body: some View {
        HStack{
            Button {
                    
            } label: {
                Text("\(value)")
                    .padding()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                    .background(.gray)
                    .font(.largeTitle)
                    .clipShape(Circle())
            }
            .padding(2.5)
        }
    }
}

struct NumberBtn_Previews: PreviewProvider {
    static var previews: some View {
        NumberBtn(value: 1)
    }
}
