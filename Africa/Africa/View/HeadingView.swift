//
//  HeadingView.swift
//  Africa
//
//  Created by kakao on 2023/04/10.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
    }
}

// MARK: - PREVIEW
struct HeadingViewPreviews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.onrectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
