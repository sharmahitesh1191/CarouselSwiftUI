//
//  PageIndicatorView.swift
//  Carousel
//
//  Created by Hitesh Sharma on 11/7/25.
//

import SwiftUI

struct PageIndicatorView: View {
    let imagesCount: Int
    let currentIndex: Int?

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<imagesCount, id: \.self) { index in
                Circle()
                    .fill(currentIndex == index ? .gray : .gray.opacity(0.5))
                    .frame(width: 8, height: 8)
            }
        }
    }
}
