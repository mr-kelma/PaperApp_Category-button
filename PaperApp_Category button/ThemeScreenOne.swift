//
//  ThemeScreenOne.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 28.11.22.
//

import SwiftUI

struct ThemeScreenOne: View {
    @State private var buttonPressed: [String:Bool] = conditionCategoryButton
    
    var body: some View {
        
        VStack {
            FlowLayout(mode: .scrollable,
                       items: category,
                       itemSpacing: 6) {
                CategoryButton(buttonPressed: $buttonPressed, buttonLabel: $0)
            } .padding(5)
            Button(action: {
                buttonPressed.keys.forEach { buttonPressed[$0] = false }
                conditionCategoryButton.keys.forEach { conditionCategoryButton[$0] = false }
            }) {
                Text("Сбросить все")
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorDarkGray"))
                    .padding()
                    .opacity(buttonPressed.values.contains(true) ? 1 : 0)
            }
            .disabled(!buttonPressed.values.contains(true))
            Spacer()
        }
    }
}

struct ThemeScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ThemeScreenOne()
    }
}
