//
//  ThemeScreenTwo.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 22.11.22.
//

import SwiftUI

struct ThemeScreenTwo: View {
    @State private var resetPressed: Bool = false
    private var arrayCategoryButton: [CategoryButton] { category.map { CategoryButton(buttonLabel: $0) } }
    
    var body: some View {
        
        VStack {
            ForEach(0..<Int(round(Double(category.count) / 3.0)), id: \.self) { index in
                HStack(spacing: 10) {
                    
                    if category.count % 3 == 0 {
                        arrayCategoryButton[index * 3]
                        arrayCategoryButton[index * 3 + 1]
                        arrayCategoryButton[index * 3 + 2]
                        Spacer()
                    }
                }
                .frame(height: 35)
            }
        
            Button(action: {
                self.resetPressed.toggle()
            }) {
                Text("Сбросить все")
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorDarkGray"))
                    .padding()
                    .opacity(resetPressed ? 0 : 1)
            }
            .disabled(resetPressed)
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
