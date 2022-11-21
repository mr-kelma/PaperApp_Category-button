//
//  CategoryScrollView.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 21.11.22.
//

import SwiftUI

let category: [String] = ["КОФЕ", "ЗАВТРАКИ", "ЕДА", "ПРОГУЛКИ", "БАРЫ", "ЖИВОТНЫЕ", "ДЕТИ", "ИССКУСТВО", "СПОРТ", "УСЛУГИ", "ПОКУПКИ", "ИСТОРИИ", "ВЫХОДНЫЕ", "ВЕЧЕР", "КОВОРКИНГ"]

struct CategoryScrollView: View {
    
    private var arrayCategoryButton: [CategoryButton] { category.map { CategoryButton(buttonLabel: $0) } }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<arrayCategoryButton.count, id: \.self) {
                    arrayCategoryButton[$0]
                        .padding(2)
                }
            }
        }
    }
}

struct CategoryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScrollView()
    }
}
