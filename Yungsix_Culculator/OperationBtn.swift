//
//  operButton.swift
//  Yungsix_Culculator
//
//  Created by 최윤석 on 2022/05/28.
//

import SwiftUI

struct OperationBtn: View {
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
                    .font(.title)
                    .clipShape(Circle())
            }
            .padding(2.5)
        }
    }
}

struct OperationBtn_Previews: PreviewProvider {
    static var previews: some View {
        OperationBtn(operation: "divide")
    }
}
