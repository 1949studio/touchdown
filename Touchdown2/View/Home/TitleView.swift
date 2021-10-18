//
//  TitleView.swift
//  Touchdown2
//
//  Created by Jack Pyo Toke on 18/10/21.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    var title: String
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
