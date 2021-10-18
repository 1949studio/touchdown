//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Jack Pyo Toke on 17/10/21.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPERTY
    let category: Category
    //MARK: - BODY
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)

                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        })
//        Text("Test")
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
