//
//  ContentView.swift
//  Carousel
//
//  Created by Hitesh Sharma on 11/6/25.
//

import SwiftUI

struct ContentView: View {
    private let images: [String] = ["image2", "image1", "image3"]
    @State private var currentIndex: Int? = 1

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(showsIndicators: false) {
                VStack(spacing: 25) {
                    HeaderView()
                    ImageCarouselView(images: images, currentIndex: $currentIndex)
                    PageIndicatorView(imagesCount: images.count, currentIndex: currentIndex)
                    TitleSectionView()
                    VisaTextFieldAndButton()
                }
                .padding(.top, 25)
            }
            .onAppear {
                DispatchQueue.main.async {
                    proxy.scrollTo(1, anchor: .center)
                }
            }
        }
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack(alignment: .top, spacing: 0) {
                Text("atlys")
                    .font(.system(size: 50, weight: .bold))
                Image(systemName: "airplane")
                    .font(.system(size: 20, weight: .medium))
            }
            Text("visas on time")
                .font(.system(size: 19, weight: .semibold))
                .foregroundColor(.blue)
        }
        .foregroundColor(.black)
        .padding(.bottom, 10)
    }
}

struct TitleSectionView: View {
    var body: some View {
        VStack(spacing: 2) {
            Text("Get Visas")
                .font(.system(size: 40, weight: .bold))
            Text("on time")
                .font(.system(size: 40, weight: .bold))
        }
        .foregroundColor(.black)
    }
}
