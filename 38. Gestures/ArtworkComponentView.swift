//
//  PictureComponentView.swift
//  38. Gestures
//
//  Created by Sesili Tsikaridze on 22.12.23.
//

import SwiftUI

struct ArtworkComponentView: View {
    var image: String
    
    var body: some View {
        ImageFromURL(imageString: image)
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.yellow, lineWidth: 5)
            )
    }
}

#Preview {
    ArtworkComponentView(image: "https://www.datocms-assets.com/103094/1688659635-1503909239806647-605174-2.jpg?auto=format%2Ccompress&max-w=800")
}
