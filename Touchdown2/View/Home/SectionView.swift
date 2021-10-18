//
//  SectionView.swift
//  Touchdown2
//
//  Created by Jack Pyo Toke on 18/10/21.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTY
    @State var rotateClockwise : Bool
    let text : String
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            
            Text(text.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false, text: "Categories")
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
