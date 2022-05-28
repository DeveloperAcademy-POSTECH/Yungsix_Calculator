//
//  NumButton.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/27.
//

import SwiftUI

struct NumButton: View {
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

struct NumButton_Previews: PreviewProvider {
    static var previews: some View {
        NumButton(value: 1)
    }
}
