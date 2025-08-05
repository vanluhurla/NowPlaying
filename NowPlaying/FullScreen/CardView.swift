//
//  CardView.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 05/08/2025.
//

import SwiftUI

struct CardView: View {
    var dragOffSet: CGFloat
    var show: Bool
    var geo: CGSize
    
    var body: some View {
        Image(.artist)
            .resizable()
            .scaledToFill()
            .frame(width: show ? max(320 - dragOffSet / 4, 50) : min(50 + dragOffSet / 4, 320),
                   height: show ? max(320 - dragOffSet / 4, 50) : min(50 + dragOffSet / 4, 320))
            .clipShape(.rect(cornerRadius: 12))
            .padding(.trailing, show ? 0 + dragOffSet / 3 : max(geo.width - dragOffSet / 2, geo.width / 10))
    }
}

//#Preview {
//    CardView()
//}
