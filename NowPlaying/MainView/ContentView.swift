//
//  ContentView.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 06/08/2025.
//

import SwiftUI

struct ContentView: View {
    var selectedSong: Song = Song(name: "Feeling Lonely",
                                  artist: "Soy Pablo",
                                  cover: "artist")
    
    var body: some View {
        ZStack {
            rootView
            playerView
        }
    }
}

private extension ContentView {
    var rootView: some View {
        ZStack {
            LinearGradient(colors: [.playListBackground, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
        }
        .ignoresSafeArea()
    }
    
    var playerView: some View {
        FullScreenPlayerView(song: selectedSong)
            .background(.clear)
    }
}

#Preview {
    ContentView()
}
