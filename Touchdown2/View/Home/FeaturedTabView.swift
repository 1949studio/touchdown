//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Jack Pyo Toke on 17/10/21.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            
            ForEach(players){ player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
            
        }//: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 13 mini")
            .background(Color.gray)
    }
}
