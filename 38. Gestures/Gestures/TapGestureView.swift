//
//  TapGestureView.swift
//  38. Gestures
//
//  Created by Sesili Tsikaridze on 23.12.23.
//

import SwiftUI

struct TapGestureView: View {
    @State private var showingAlert = false

    var body: some View {
        ArtworkComponentView(image: "https://www.datocms-assets.com/103094/1688661281-1554380477696563-suttermans.jpg?auto=format%2Ccompress&max-w=800")
            .padding(.bottom, 20)
            .overlay(alignment: .topLeading, content: {
                Text("Tap Gesture")
                    .font(.system(size: 14, weight: .light))
                    .padding(5)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(5)
            })
            .onTapGesture {
                showingAlert = true
            }
            .alert("So does Tap Gesture", isPresented: $showingAlert) {
                Button("congrats again", role: .cancel) { }
            }
    }
}

#Preview {
    TapGestureView()
}
