//
//  ThemeScreenOne.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 28.11.22.
//

import SwiftUI

struct ThemeScreenOne: View {
    @State private var resetPressed: Bool = true
    
    var body: some View {
        
        VStack {
            FlowLayout(mode: .scrollable,
                       items: arrayCategoryButton,
                       itemSpacing: 6) {
                CategoryButton(buttonLabel: $0.buttonLabel)
            } .padding(5)
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
    }
}

struct ThemeScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ThemeScreenOne()
    }
}
