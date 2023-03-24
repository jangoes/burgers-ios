//
//  Burgers.swift
//  burgers-ios
//
//  Created by John Ellie Go on 3/24/23.
//

import Foundation

typealias Burgers = [BurgerItem]

struct BurgerItem: Codable {
    let id: Int
    let name: String
    let category: BurgerCategory
    let position: Int
}

enum BurgerCategory: String, Codable, CaseIterable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

// MARK: Mock Data
extension Burgers {
    static let sampleBurgerA = BurgerItem(
        id: 1,
        name: "Breakfast Burger",
        category: .easy,
        position: 1
    )

    static let sampleBurgerB = BurgerItem(
        id: 2,
        name: "Beef Burger",
        category: .medium,
        position: 1
    )

    static let sampleBurgerC = BurgerItem(
        id: 3,
        name: "Chicken Hungarian Burger",
        category: .medium,
        position: 1
    )

    static let yumBurgers = [sampleBurgerA, sampleBurgerB, sampleBurgerC]
}
