//
//  CategoryScrollView.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 21.11.22.
//

import SwiftUI

let category: [String] = ["КОФЕ", "ЗАВТРАКИ", "ЕДА", "ПРОГУЛКИ", "БАРЫ", "ЖИВОТНЫЕ", "ДЕТИ", "ИССКУСТВО", "СПОРТ", "УСЛУГИ", "ПОКУПКИ", "ИСТОРИИ", "ВЫХОДНЫЕ", "ВЕЧЕР", "КОВОРКИНГ"]

struct CategoryScrollView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<category.count, id: \.self) {
                    CategoryButton(buttonLabel: category[$0])
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
