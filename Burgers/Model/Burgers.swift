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
    let imageUrl: String
}

enum BurgerCategory: String, Codable, CaseIterable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

// MARK: Mock Data
extension Burgers {
    static private let imageURL = "https://ddg0cip9uom1w.cloudfront.net/code-challenge/burger.jpg"

    static let sampleBurgerA = BurgerItem(
        id: 1,
        name: "Breakfast Burger",
        category: .easy,
        position: 1,
        imageUrl: imageURL
    )

    static let sampleBurgerB = BurgerItem(
        id: 2,
        name: "Beef Burger",
        category: .medium,
        position: 1,
        imageUrl: imageURL
    )

    static let sampleBurgerC = BurgerItem(
        id: 3,
        name: "Chicken Hungarian Burger",
        category: .medium,
        position: 1,
        imageUrl: imageURL
    )

    static let yumBurgers = [sampleBurgerA, sampleBurgerB, sampleBurgerC]
}
