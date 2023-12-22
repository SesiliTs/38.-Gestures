//
//  ContentView.swift
//  38. Gestures
//
//  Created by Sesili Tsikaridze on 22.12.23.
//

import SwiftUI

struct ArtGallery: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text("le gallerie degli uffizi".uppercased())
                .font(.system(size: 18, weight: .bold, design: .monospaced))
            ScrollView {
                DragGestureView()
                RotationGestureView()
                MagnificationGestureView()
                LongPressGestureView()
                TapGestureView()

            }
        }
        .padding(30)
    }
}

#Preview {
    ArtGallery()
}
