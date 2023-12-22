//
//  DragGesture.swift
//  38. Gestures
//
//  Created by Sesili Tsikaridze on 23.12.23.
//

import SwiftUI

struct DragGestureView: View {
    
    @State var offsetSize = CGSize.zero
    
    var body: some View {
        VStack {
            ArtworkComponentView(image: "https://www.datocms-assets.com/103094/1688659635-1503909239806647-605174-2.jpg?auto=format%2Ccompress&max-w=800")
                .padding(.bottom, 20)
                .overlay(alignment: .topLeading, content: {
                    Text("Drag Gesture")
                        .font(.system(size: 14, weight: .light))
                        .padding(5)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .padding(5)
                })
                .offset(offsetSize)
                .gesture(
                    DragGesture()
                        .onChanged { offsetSize = $0.translation }
                        .onEnded {_ in
                            offsetSize = CGSize.zero
                        }
                )
        }
    }
}

#Preview {
    DragGestureView()
}
