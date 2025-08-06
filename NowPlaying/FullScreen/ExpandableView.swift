//
//  ExpandableView.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 06/08/2025.
//

import SwiftUI

struct ExpandableView: View {
    var song: Song
    var dragOffSet: CGFloat
    var show: Bool
    var geo: CGSize
    var opacity: CGFloat
    var dynamicOpacity: CGFloat
    
    private var topPadding: CGFloat {
        show
        ? geo.height / 2 - 300 - dragOffSet / 8
        : 20 + dragOffSet / 6
    }
    
    private var leadingPadding: CGFloat {
        show
        ? 0
        : max(10 - dragOffSet, 10)
    }
    
    var body: some View {
        VStack {
            Group {
                ZStack(alignment: .leading) {
                    CardView(song: song,
                             dragOffSet: dragOffSet,
                             show: show,
                             geo: geo)
                    TitleView(song: song,
                              dragOffSet: dragOffSet,
                              show: show,
                              geo: geo,
                              opacity: opacity)
                }
            }
            .padding(.top, topPadding)
            .padding(.leading, leadingPadding)
            
            Spacer()
            
            ControlBarView()
                .opacity(dynamicOpacity)
                .offset(y: 30)
                .padding()
            
            Spacer()
        }
    }
}
