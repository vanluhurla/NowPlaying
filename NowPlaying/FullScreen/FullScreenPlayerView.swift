//
//  FullScreenPlayerView.swift
//  NowPlaying
//
//  Created by Vanessa Lucena on 05/08/2025.
//

import SwiftUI

struct FullScreenPlayerView: View {
    
    @State var show = false
    @State var dragOffSet: CGFloat = 0
    @State var lastDragPosition: CGFloat = 0
    @State var opacity: Double = 1.0
    var opacity2: Double {
        show ? max(1 - Double(dragOffSet) / 1000, 0)
        : min(Double(dragOffSet) / 50000, 1)
    }
    
    var body: some View {
        GeometryReader { geo in
            GradientBackground()
            
            VStack {
                Group {
                    ZStack(alignment: .leading) {
                        CardView(dragOffSet: dragOffSet,
                                 show: show,
                                 geo: geo.size)
                        TitleView(dragOffSet: dragOffSet,
                                  show: show, geo: geo.size,
                                  opacity: opacity)
                    }
                }
                .padding(.top, show ? geo.size.height / 2 - 300 - dragOffSet / 8
                         : 10 + dragOffSet / 6)
                .padding(.leading, show ? 0
                         : max(10 - dragOffSet, 10))
                
                Spacer()
                
                ControlBarView()
                    .opacity(opacity2)
                    .offset(y: 30)
                    .padding()
                
                Spacer()
            }
            .toolbar(show ? .visible
                     : .hidden, for: .navigationBar)
            .navigationTitle("Now Playing")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity,
               maxHeight: show ? .infinity : 70 + dragOffSet)
        .background(Color(.systemGray))
        .clipShape(.rect(cornerRadius: show ? max(40 - dragOffSet / 10, 12): min(12 + dragOffSet / 10, 40)))
        .offset(y: show ? dragOffSet : 0)
        .gesture(
            DragGesture()
                .onChanged { value in
                    let dragChange = value.translation.height / 2
                    lastDragPosition = value.translation.height
                    if show {
                        withAnimation(.smooth) {
                            dragOffSet = dragChange * 2
                            dragOffSet = max(0, dragOffSet)
                        }
                    } else {
                        dragOffSet -= dragChange
                        dragOffSet = max(0, dragOffSet)
                    }
                    opacity = max(1 - Double(dragOffSet) / 100, 0)
                }
                .onEnded { _ in
                    lastDragPosition = 0
                    if show && dragOffSet > 50 {
                        withAnimation(.smooth) {
                            show = false
                        }
                    } else if !show && dragOffSet > 50 {
                        withAnimation(.smooth) {
                            show = true
                        }
                    }
                    withAnimation(.spring) {
                        dragOffSet = 0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        opacity = 1
                    }
                }
        )
        .frame(maxHeight: .infinity, alignment: .bottom)
        .animation(.spring, value: show)
        .padding(show ? min(dragOffSet / 20, 30) : 30 - min(dragOffSet / 20, 30))
        .ignoresSafeArea()
    }
}


#Preview {
    FullScreenPlayerView()
}


