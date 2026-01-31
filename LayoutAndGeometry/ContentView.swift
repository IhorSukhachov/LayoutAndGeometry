//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Ihor Sukhachov on 31.01.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        HStack(alignment: .lastTextBaseline) {
//            Text("Long")
//                .font(Font.caption)
//            Text("Live")
//            
//            Text("The")
//                .font(Font.title)
//            Text("Queen")
//                .font(Font.largeTitle)
//        }
        
        VStack(alignment: .leading) {
            Text("Hello world")
                .alignmentGuide(.leading) { d in
                    d[.trailing]
                }
            Text("This is a longer line of text")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
