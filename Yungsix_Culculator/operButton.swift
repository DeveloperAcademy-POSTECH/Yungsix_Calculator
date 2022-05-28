//
//  operButton.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/28.
//

import SwiftUI

struct operButton: View {
    var operation: String
    
    var body: some View {
        HStack{
            Button {
                
            } label: {
                Image(systemName: operation)
                    .padding()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                    .background(.orange)
                    .font(.largeTitle)
                    .clipShape(Circle())
            }
            .padding(2.5)
        }
    }
}

struct operButton_Previews: PreviewProvider {
    static var previews: some View {
        operButton(operation: "divide")
    }
}
