//
//  ThemeScreen.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 21.11.22.
//

import SwiftUI

struct ThemeScreenOne: View {
    @State private var resetPressed: Bool = false
    private var arrayCategoryButton: [CategoryButton] { category.map { CategoryButton(buttonLabel: $0) } }
    private var gridItemLayout = [GridItem] (repeating: GridItem(.fixed(35), alignment: .leading), count: Int(round(Double(category.count) / 3.0)))
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHGrid(rows: gridItemLayout) {
                    ForEach((0..<arrayCategoryButton.count), id: \.self) {
                        arrayCategoryButton[$0]
                    }
                }
            }
            .frame(height: 35 * CGFloat(Int(round(Double(category.count) / 3.0))))
            .padding()
            
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
    }
}

struct ThemeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThemeScreenOne()
    }
}
