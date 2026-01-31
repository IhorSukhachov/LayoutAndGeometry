//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Ihor Sukhachov on 31.01.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Text("Hello, world!")
            .frame(width: 300, height: 300, alignment: .topLeading)
            .background(.red)
    }
}

#Preview {
    ContentView()
}
