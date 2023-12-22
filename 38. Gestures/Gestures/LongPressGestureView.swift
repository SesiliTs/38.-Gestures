//
//  LongPressGesture.swift
//  38. Gestures
//
//  Created by Sesili Tsikaridze on 23.12.23.
//

import SwiftUI

struct LongPressGestureView: View {
    
    @State private var showingAlert = false

    var body: some View {

        ArtworkComponentView(image: "https://www.datocms-assets.com/103094/1688660645-1506160214865306-perugino-compianto-su-cristo-morto-perugino-principale.jpg?auto=format%2Ccompress&max-w=800")
            .padding(.bottom, 20)
            .overlay(alignment: .topLeading, content: {
                Text("Long Press Gesture")
                    .font(.system(size: 14, weight: .light))
                    .padding(5)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(5)
            })
            .onLongPressGesture(minimumDuration: 1) {
                showingAlert = true
            }
            .alert("yaay Long Press Gesture works", isPresented: $showingAlert) {
                Button("congrats", role: .cancel) { }
            }
    }
}

#Preview {
    LongPressGestureView()
}
