//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Ihor Sukhachov on 31.01.2026.
//

import SwiftUI


struct ContentView: View {
    let colors: [Color] = [.brown, .blue, .red, .yellow, .green, .gray, .pink, .purple, .orange]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1..<20) { num in
                    Text("Number \(num)")
                        .font(.largeTitle)
                        .padding()
                        .background(.red)
                        .frame(width: 200, height: 200)
                        .visualEffect { content, proxy in
                            content
                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                        }

                }
            }
        }
    }
}

#Preview {
    ContentView()
}
