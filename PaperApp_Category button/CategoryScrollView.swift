//
//  CategoryScrollView.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 21.11.22.
//

import SwiftUI

struct CategoryScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<arrayCategoryButton.count, id: \.self) {
                    arrayCategoryButton[$0]
                        .padding(2)
                }
            }
        }.padding()
    }
}

struct CategoryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScrollView()
    }
}
