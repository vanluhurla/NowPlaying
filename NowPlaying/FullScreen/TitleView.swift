//
//  TitleView.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 05/08/2025.
//

import SwiftUI

struct TitleView: View {
    var song: Song
    var dragOffSet: CGFloat
    var show: Bool
    var geo: CGSize
    var opacity: Double
    
    var body: some View {
        VStack (spacing: show ? 10 : 4) {
            Text(song.name)
                .font(show ? .title : .callout)
                .foregroundStyle(.white)
                .bold()
                .offset(y: show ? 220 : 0)
                .offset(x: show ? 0 : geo.width / 2 - 130)
                .padding(.leading, show ? 60 : 65)
                .opacity(opacity)
                .animation(.none, value: show)

            Text(song.artist)
                .font(.system(size: show ? 16 : 12, weight: .bold))
                .foregroundStyle(.white)
                .bold()
                .offset(y: show ? 220 : 0)
                .offset(x: show ? 0 : geo.width / 2 - 130)
                .padding(.leading, show ? 60 : 65)
                .opacity(opacity)
                .animation(.none, value: show)
        }
    }
}
