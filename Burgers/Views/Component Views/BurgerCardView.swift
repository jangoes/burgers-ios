//
//  BurgerCardView.swift
//  burgers-ios
//
//  Created by John Ellie Go on 3/24/23.
//

import SwiftUI
import CachedAsyncImage

struct BurgerCardView: View {
    let burger: BurgerItem

    private let imageHeight: CGFloat = 200
    private let imageURL = URL(string: "https://ddg0cip9uom1w.cloudfront.net/code-challenge/burger.jpg")

    var body: some View {
        VStack(spacing: 0) {
            // Info: image caching ~
            // https://www.avanderlee.com/swiftui/downloading-caching-images/
            AsyncImage(url: imageURL) { image in
                image // Displays the loaded image.
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: imageHeight)
                    .clipped()
            } placeholder: {
                ProgressView()
                    .frame(height: imageHeight)
            }


            VStack(spacing: 4) {
                HStack {
                    Text(burger.name)
                        .font(.headline)
                        .lineLimit(1)

                    Spacer()
                }
                .padding(.horizontal, 15)

                HStack {
                    Text(burger.category.rawValue)
                        .font(.headline)
                        .foregroundColor(.gray)
                        .lineLimit(1)

                    Spacer()
                }
                .padding(.horizontal, 15)
            }
            .padding(.vertical, 15)
        }
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 2)
        )
    }
}

struct BurgerCardView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerCardView(burger: Burgers.sampleBurgerA)
            .frame(width: 160)
    }
}
