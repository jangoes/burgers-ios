//
//  ContentViewModel.swift
//  burgers-ios
//
//  Created by John Ellie Go on 3/24/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    private let allBurgers: Burgers

    @Published var showFilterSheet = false
    @Published var burgers = Burgers()

    init() {
        allBurgers =  RequestManager.fetchData().sorted {
            $0.position < $1.position
        }
        burgers = allBurgers
    }

    /// Opens an alert sheet where you can select a filter type
    func openFilter() {
        showFilterSheet = true
    }

    /// Filters all burgers by selected category
    /// - Parameters:
    ///    - category: `.easy`, `.medium`, or `.hard`
    func filter(by category: BurgerCategory) {
        burgers = allBurgers.filter {
            $0.category == category
        }
    }

    /// Removes applied filters
    func removeFilter() {
        burgers = allBurgers
    }
}
