//
//  RotationGestureView.swift
//  38. Gestures
//
//  Created by Sesili Tsikaridze on 23.12.23.
//

import SwiftUI

struct RotationGestureView: View {
    @State var value = Angle.zero
    
    var body: some View {
        ArtworkComponentView(image: "https://mymodernmet.com/wp/wp-content/uploads/2018/09/botticelli-primavera-thumbnail.jpg")
            .padding(.bottom, 20)
            .overlay(alignment: .topLeading, content: {
                Text("Rotation Gesture")
                    .font(.system(size: 14, weight: .light))
                    .padding(5)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(5)
            })
            .rotationEffect(value)
            .gesture(
                RotationGesture()
                    .onChanged { value = $0 }
                    .onEnded { _ in value = .zero }
            )
    }
}

#Preview {
    RotationGestureView()
}
