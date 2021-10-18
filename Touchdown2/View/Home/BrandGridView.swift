//
//  BrandGridView.swift
//  Touchdown2
//
//  Created by Jack Pyo Toke on 18/10/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        VStack {
            TitleView(title: "Brands")
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                    ForEach(brands) { brand in
                        BrandItemView(brand: brand)
                    }
                })
                    .frame(height: 200)
                    .padding(15)
            }
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
