//
//  CategoryButton.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 21.11.22.
//

import SwiftUI

var category: [String] = ["КОФЕ", "ЗАВТРАКИ", "ЕДА", "ПРОГУЛКИ", "БАРЫ", "ЖИВОТНЫЕ", "ДЕТИ", "ИССКУСТВО", "СПОРТ", "УСЛУГИ", "ПОКУПКИ", "ИСТОРИИ", "ВЫХОДНЫЕ", "ВЕЧЕР", "КОВОРКИНГ", "111"]

struct CategoryButton: View {
    @Binding var buttonPressed: Bool
    var buttonLabel: String
    
    var body: some View {
        Button(action: {
            // some action
            self.buttonPressed.toggle()
        }) {
            Text(buttonLabel)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(buttonPressed ? .white : Color ("ColorGreen"))
                .padding(4)
        }
        .padding(.horizontal)
        .background(buttonPressed ? Color("ColorGreen") : .white)
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(Color("ColorGreen"), lineWidth: 1.5))
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(buttonPressed: .constant(false), buttonLabel: "КОФЕ")
    }
}
