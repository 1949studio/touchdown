//
//  ProductItemView.swift
//  Touchdown2
//
//  Created by Jack Pyo Toke on 18/10/21.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTY
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text("\(product.formattedPrice)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        } //: VStack
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[1])
            .previewLayout(.fixed(width: 200, height: 200))
            .padding()
            .background(colorBackground)
    }
}
