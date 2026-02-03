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
        ScrollView {
                   ForEach(0..<50) { index in
                       GeometryReader { proxy in
                           Text("Row #\(index)")
                               .font(.title)
                               .frame(maxWidth: .infinity)
                               .background(colors[index % 7])
                               .rotation3DEffect(.degrees(proxy.frame(in: .global).minY / 5), axis: (x: 0, y: 1, z: 0))
                       }
                       .frame(height: 40)
                   }
               }
    }
}

#Preview {
    ContentView()
}
