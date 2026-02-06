//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Ihor Sukhachov on 31.01.2026.
//

import SwiftUI

//
//struct ContentView: View {
//    let colors: [Color] = [.brown, .blue, .red, .yellow, .green, .gray, .pink, .purple, .orange]
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 0) {
//                ForEach(1..<20) { num in
//                    Text("Number \(num)")
//                        .font(.largeTitle)
//                        .padding()
//                        .background(.red)
//                        .frame(width: 200, height: 200)
//                        .visualEffect { content, proxy in
//                            content
//                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
//                        }
//
//                }
//            }
//            .scrollTargetLayout()
//        }
//        .scrollTargetBehavior(.viewAligned)
//    }
//}

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
//                        let minY = proxy.frame(in: .global).minY
//                        let fadeStart: CGFloat = 200
//                        let opacity = min(max((minY - fadeStart) / fadeStart, 0), 1)
                        let minY = proxy.frame(in: .global).minY
                        let screenHeight = fullView.size.height
                        let progress = min(max(minY / screenHeight, 0), 1)
                        let scale = 0.5 + (progress * 0.5)
                        let hue = progress
                        
                        
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color(hue:hue, saturation: 0.8, brightness: 0.9))
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
//                            .opacity(opacity)
                            .scaleEffect(scale)
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
