//
//  ThemeScreenTwo.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 22.11.22.
//

import SwiftUI

struct ThemeScreenTwo: View {
    @State private var resetPressed: Bool = false
    @State private var categoryButtonPressed: Bool = false
    
    private let amountHStack = Int((Double(category.count) / 3.0).rounded(.awayFromZero))
    private var arrayCategoryButton: [CategoryButton] { category.map { CategoryButton(buttonPressed: $categoryButtonPressed, buttonLabel: $0) } }
    private var searchButtonsPressed: Bool {
        var search = false
        for button in arrayCategoryButton {
            guard button.buttonPressed else { return search }
            search = true
        }
        return search
    }
    
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
                self.categoryButtonPressed.toggle()
            }) {
                Text("Сбросить все")
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorDarkGray"))
                    .padding()
                    .opacity(searchButtonsPressed ? 1 : 0)
            }
            .disabled(searchButtonsPressed != true)
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
