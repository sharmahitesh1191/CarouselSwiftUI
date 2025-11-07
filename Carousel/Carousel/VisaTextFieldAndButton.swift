//
//  VisaTextFieldAndButton.swift
//  Carousel
//
//  Created by Hitesh Sharma on 11/7/25.
//

import SwiftUI

struct VisaTextFieldAndButton: View {
    @State private var phoneNumber = ""

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                HStack(spacing: 4) {
                    Image(systemName: "flag.fill")
                        .foregroundColor(.gray)
                    Text("+91")
                        .font(.system(size: 16, weight: .medium))
                    Image(systemName: "chevron.down")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                .padding(.leading, 12)

                Divider()
                    .frame(height: 28)

                TextField("Enter mobile number", text: $phoneNumber)
                    .keyboardType(.phonePad)
                    .font(.system(size: 16))
                    .padding(.leading, 12)
            }
            .frame(height: 56)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.separator), lineWidth: 1)
            )

            Button("Continue") {
                // Action
            }
            .font(.system(size: 18, weight: .semibold))
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .foregroundColor(.white)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.purple.opacity(0.8), Color.blue.opacity(0.8)]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(12)
        }
        .padding(.horizontal, 24)
    }
}

