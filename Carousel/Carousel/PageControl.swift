//
//  PageControl.swift
//  Carousel
//
//  Created by Assistant on 11/6/25.
//

import SwiftUI

struct PageControl: View {
    let pageCount: Int
    let currentIndex: Int
    var dotSize: CGFloat = 8
    var spacing: CGFloat = 8
    
    var body: some View {
        HStack(spacing: spacing) {
            ForEach(0..<pageCount, id: \.self) { index in
                Circle()
                    .fill(index == currentIndex ? Color.gray : Color.gray.opacity(0.4))
                    .frame(width: dotSize, height: dotSize)
                    .animation(.easeInOut(duration: 0.25), value: currentIndex)
            }
        }
        .padding(.vertical, 8)
    }
}

