//
//  MagnificationGestureView.swift
//  38. Gestures
//
//  Created by Sesili Tsikaridze on 23.12.23.
//

import SwiftUI

struct MagnificationGestureView: View {
    @State var currentAmount = 0.0
    var body: some View {
        ArtworkComponentView(image: "https://www.datocms-assets.com/103094/1688661087-1506346480222743-paolo-uccello-san-romano-principale.jpg?auto=format%2Ccompress&max-w=800")
            .padding(.bottom, 20)
            .overlay(alignment: .topLeading, content: {
                Text("Magnification Gesture")
                    .font(.system(size: 14, weight: .light))
                    .padding(5)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(5)
            })
            .scaleEffect(currentAmount + 1)
            .gesture(
                MagnificationGesture()
                    .onChanged { amount in
                        currentAmount = amount - 1
                    }
                    .onEnded { amount in
                        currentAmount = 0
                    }
            )
    }
}

#Preview {
    MagnificationGestureView()
}
