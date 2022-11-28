//
//  ThemeScreenTwo.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 22.11.22.
//

import SwiftUI

struct ThemeScreenTwo: View {
    @State private var resetPressed: Bool = true
    private let amountHStack = Int((Double(category.count) / 3.0).rounded(.awayFromZero))
    
    var body: some View {
        VStack {
            ForEach(0..<amountHStack, id: \.self) { index in
                HStack(spacing: 10) {
                        arrayCategoryButton[index * 3]
                    if (index * 3 + 1) < category.count {
                        arrayCategoryButton[index * 3 + 1]
                    }
                    if (index * 3 + 2) < category.count {
                        arrayCategoryButton[index * 3 + 2]
                    }
                    Spacer()
                }
                .frame(height: 35)
            }
        
            Button(action: {
                //some action
            }) {
                Text("Сбросить все")
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorDarkGray"))
                    .padding()
                    .opacity(resetPressed ? 1 : 0)
            }
            .disabled(resetPressed != true)
            Spacer()
        }
        .padding(5)
    }
}

struct ThemeScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ThemeScreenTwo()
    }
}
