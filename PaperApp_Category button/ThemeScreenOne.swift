//
//  ThemeScreenOne.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 28.11.22.
//

import SwiftUI

struct ThemeScreenOne: View {
    @State private var resetPressed: Bool = false

    private var checkingPressedButtons: Bool { conditionCategoryButton.values.contains(true) }
    
    var body: some View {
        
        VStack {
            FlowLayout(mode: .scrollable,
                       items: category,
                       itemSpacing: 6) {
                CategoryButton(buttonLabel: $0)
            } .padding(5)
            Button(action: {
                
                
                conditionCategoryButton.keys.forEach { conditionCategoryButton[$0] = false }
                resetPressed = checkingPressedButtons
            }) {
                Text("Сбросить все")
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorDarkGray"))
                    .padding()
//                    .opacity(checkingPressedButtons == resetPressed ? 0 : 1)
            }
//            .disabled(checkingPressedButtons == resetPressed)
            Spacer()
        }
    }
}

struct ThemeScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ThemeScreenOne()
    }
}
