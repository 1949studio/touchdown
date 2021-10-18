//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Jack Pyo Toke on 18/10/21.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(header: SectionView(rotateClockwise: false, text: "Categories"), footer: SectionView(rotateClockwise: false, text: "Categories")) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            } //: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: Scroll
    }
}

//MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
