//
//  ControlBarView.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 05/08/2025.
//

import SwiftUI

struct ControlBarView: View {
    @State private var currentTime: Double = 0
    let totalTime: Double = 197
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            topButtons
            VStack(spacing: 4) {
                progressBar
                songTime
            }
            playerButtons
            Spacer()
        }
    }
}

private extension ControlBarView {
    var topButtons: some View {
        HStack {
            Button(action: {}) {Image(.heart)}
            Spacer()
            Button(action: {}) {Image(.upload)}
        }
        .padding(.horizontal)
    }
    
    var progressBar: some View {
        Slider(value: $currentTime, in: 0...totalTime)
            .accentColor(.white)
            .padding(.horizontal)
    }
    
    var songTime: some View {
        HStack {
            Text(formatTime(currentTime))
                .font(.caption)
                .foregroundColor(.white)
            Spacer()
            Text(formatTime(totalTime))
                .font(.caption)
                .foregroundColor(.white)
        }
        .padding(.horizontal)
    }
    
    var playerButtons: some View {
        HStack(spacing: 30) {
            Button(action: {}) {Image(.shuffle)}
            Button(action: {}) {Image(.backwards)}
            Button(action: {}) {Image(.play)}
            Button(action: {}) {Image(.foreward)}
            Button(action: {}) {Image(.repeat)}
        }
    }
    
    func formatTime(_ seconds: Double) -> String {
        let minutes = Int(seconds) / 60
        let secs = Int(seconds) % 60
        return String(format: "%d:%02d", minutes, secs)
    }
}

#Preview {
    ControlBarView()
}
