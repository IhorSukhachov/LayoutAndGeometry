//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Ihor Sukhachov on 31.01.2026.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue( in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
////        HStack(alignment: .lastTextBaseline) {
////            Text("Long")
////                .font(Font.caption)
////            Text("Live")
////            
////            Text("The")
////                .font(Font.title)
////            Text("Queen")
////                .font(Font.largeTitle)
////        }
//        
//        VStack(alignment: .leading) {
////            Text("Hello world")
////                .alignmentGuide(.leading) { d in
////                    d[.trailing]
////                }
////            Text("This is a longer line of text")
//            ForEach(0..<10) {position in
//                Text("Number \(position)")
//                    .alignmentGuide(.leading) { _ in
//                        Double(position) * -10
//                    }
//            }
//        }
//        .background(.red)
//        .frame(width: 400, height: 400)
//        .background(.blue)
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("Aldrin")
                    .alignmentGuide(.midAccountAndName) {d in
                        d[VerticalAlignment.center]
                    }
                Image("aldrin")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            VStack {
                Text("Full name:")
                
                Text("Some Aldrin")
                    .alignmentGuide(.midAccountAndName) {d in
                        d[VerticalAlignment.center]
                    }
                    .font(Font.largeTitle)
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
