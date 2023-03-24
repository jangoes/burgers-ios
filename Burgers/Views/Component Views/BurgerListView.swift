//
//  BurgerListView.swift
//  burgers-ios
//
//  Created by John Ellie Go on 3/24/23.
//

import SwiftUI

struct BurgerListView: View {
    let burgers: Burgers

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(burgers, id: \.id) {
                BurgerCardView(burger: $0)
                    .padding(10)
            }
        }
    }
}

struct BurgerListView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerListView(burgers: Burgers.yumBurgers)
            .padding(.horizontal, 10)
    }
}
