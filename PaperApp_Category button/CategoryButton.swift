//
//  CategoryButton.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 21.11.22.
//

import SwiftUI

struct CategoryButton: View {
    
    @State private var buttonPressed: Bool = true
    private var buttonLabel: String
    
    init(buttonLabel: String) {
        self.buttonLabel = buttonLabel
    }
    
    var body: some View {
        Button(action: {
            // some action
            self.buttonPressed = buttonPressed ? false : true
        }) {
            Text(buttonLabel)
                .font(.system(size: 15))
                .fontWeight(.medium)
                .foregroundColor(buttonPressed ? Color("ColorGreen") : .white)
                .padding(5)
        }
        .padding(.horizontal)
        .background(buttonPressed ? .white : Color("ColorGreen"))
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(Color("ColorGreen"), lineWidth: 1.5))
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(buttonLabel: "КОФЕ")
    }
}
