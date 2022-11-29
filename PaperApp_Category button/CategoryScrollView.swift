//
//  CategoryScrollView.swift
//  PaperApp_Category button
//
//  Created by Valery Keplin on 21.11.22.
//

import SwiftUI

struct CategoryScrollView: View {
    @State private var buttonPressed: [String:Bool] = Dictionary(uniqueKeysWithValues: category.map { ($0, false) })
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<category.count, id: \.self) {
                        CategoryButton(buttonPressed: $buttonPressed, buttonLabel: category[$0])
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
