//
//  ProductGridView.swift
//  Touchdown2
//
//  Created by Jack Pyo Toke on 18/10/21.
//

import SwiftUI

struct ProductGridView: View {
    //MARK: - PROPERTY
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    
    var body: some View {
        VStack {
            TitleView(title: "Helmets")
            LazyVGrid(columns: gridLayout, spacing: 15, pinnedViews: PinnedScrollableViews.sectionHeaders) {
                ForEach(products) { product in
                    ProductItemView(product: product)
                        .onTapGesture {
                            withAnimation(.easeOut){
                                shop.selectedProduct = product
                                shop.showingProduct = true
                            }
                        }
                } //: ForEach
            }
            .padding(.horizontal, 10)
        } //: LazyVGrid
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
