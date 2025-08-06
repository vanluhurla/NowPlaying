//
//  CardView.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 05/08/2025.
//

import SwiftUI

struct CardView: View {
    var song: Song
    var dragOffSet: CGFloat
    var show: Bool
    var geo: CGSize
    
    private var size: CGFloat {
        show ? max(320 - dragOffSet / 4, 50) : min(50 + dragOffSet / 4, 320)
    }
    
    private var padding: CGFloat {
        show ? 0 + dragOffSet / 3 : max(geo.width - dragOffSet / 2, geo.width / 10)
    }
    
    var body: some View {
        Image(song.cover)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(.rect(cornerRadius: 12))
            .padding(.trailing, padding)
    }
}
