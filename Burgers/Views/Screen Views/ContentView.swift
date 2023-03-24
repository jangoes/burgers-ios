//
//  ContentView.swift
//  burgers-ios
//
//  Created by John Ellie Go on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 0) {
                    // Title
                    HStack {
                        Text("Trending Recipes")
                            .font(.title)
                            .fontWeight(.bold)

                        Spacer()
                    }
                    .padding(.top, 15)
                    .padding(.horizontal, 20)

                    // Items
                    BurgerListView(burgers: viewModel.burgers)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 15)

                    Spacer()
                }
                .navigationTitle("Recipes")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: viewModel.openFilter) {
                            Text("Filter")
                        }
                    }
                }
                .actionSheet(isPresented: $viewModel.showFilterSheet) {
                    filterActionSheet(with: BurgerCategory.allCases.map { bCategory in
                        Alert.Button.default(Text(bCategory.rawValue)) {
                            viewModel.filter(by: bCategory)
                        }
                    })
                }
            }
        }
    }

    func filterActionSheet(
        with buttons: [Alert.Button]
    ) -> ActionSheet {
        ActionSheet(
            title: Text("Difficulty"),
            message: Text("You can filter recipes by difficulty."),
            buttons: buttons + [.cancel() { viewModel.removeFilter() }]
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
