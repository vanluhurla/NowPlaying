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
            
            HStack {
                // Favourite button
                Button(action: {
                }) {
                    Image(.heart)
                }
                Spacer()
                // Share button
                Button(action: {
                }) {
                    Image(.upload)
                }
            }
            .padding(.horizontal)
            
            VStack(spacing: 4) {
                // Progress bar
                Slider(value: $currentTime, in: 0...totalTime)
                    .accentColor(.white)
                    .padding(.horizontal)

                // Song time
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
            
          

            HStack(spacing: 30) {
                // Shuffle button
                Button(action: {
                }) {
                    Image(.shuffle)
                }
                
                // Backwards button
                Button(action: {
                }) {
                    Image(.backwards)
                }
                
                // Play button
                Button(action: {
                }) {
                    Image(.play)
                }
                
                // Forward button
                Button(action: {
                }) {
                    Image(.foreward)
                }
                
                // Repeat button
                Button(action: {
                }) {
                    Image(.repeat)
                }
            }
            
            Spacer()
        }
    }
    
    private func formatTime(_ seconds: Double) -> String {
        let minutes = Int(seconds) / 60
        let secs = Int(seconds) % 60
        return String(format: "%d:%02d", minutes, secs)
    }
}

#Preview {
    ControlBarView()
}
