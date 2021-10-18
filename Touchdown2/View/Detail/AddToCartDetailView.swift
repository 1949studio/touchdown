//
//  AddToCartDetailView.swift
//  Touchdown2
//
//  Created by Jack Pyo Toke on 18/10/21.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTY
    @EnvironmentObject var shop : Shop
    //MARK: - BODY
    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProducts.red, green: shop.selectedProduct?.green ?? sampleProducts.green, blue: shop.selectedProduct?.blue ?? sampleProducts.blue))
        .clipShape(Capsule())
    }
}

//MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
