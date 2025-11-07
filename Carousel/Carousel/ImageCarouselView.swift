//
//  ImageCarouselView.swift
//  Carousel
//
//  Created by Hitesh Sharma on 11/7/25.
//

import SwiftUI

struct ImageCarouselView: View {
    let images: [String]
    @Binding var currentIndex: Int?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -5) {
                ForEach(images.indices, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 100, height: 350)
                        .cornerRadius(10)
                        .zIndex(currentIndex == index ? 1 : 0)
                        .animation(.easeInOut(duration: 0.25), value: currentIndex)
                        .scrollTransition { content, phase in
                            content
                                .scaleEffect(y: phase.isIdentity ? 1 : 0.8)
                        }
                        .id(index)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .contentMargins(.horizontal, 50, for: .scrollContent)
        .scrollPosition(id: $currentIndex)
    }
}
