//
//  GradientBackground.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 05/08/2025.
//

import SwiftUI

struct GradientBackground: View {
    @State private var animate = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color.black.ignoresSafeArea()
                Circle()
                    .fill(.fullScreenBackground.opacity(0.9))
                    .frame(width: 700, height: 900)
                    .offset(x: 0, y: -100)
                    .blur(radius: 50)
                Circle()
                    .fill(.fullScreenBackground.opacity(0.2))
                    .frame(width: 500, height: 400)
                    .offset(x: -300, y: -80)
                    .blur(radius: 40)
                Circle()
                    .fill(.fullScreenBackground.opacity(0.15))
                    .frame(width: 100, height: 800)
                    .offset(x: 0, y: -300)
                    .blur(radius: 45)
            }
        }
    }
}

#Preview {
    GradientBackground()
}
