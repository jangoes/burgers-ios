//
//  RequestManager.swift
//  burgers-ios
//
//  Created by John Ellie Go on 3/24/23.
//

import Foundation

class RequestManager {
    /// Fetches the data from the json file
    /// - Returns: An array of `BurgerItems`
    static func fetchData() -> Burgers {
        if let path = Bundle.main.path(forResource: "burgers", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let decoder = JSONDecoder()
                let burgers = try decoder.decode(Burgers.self, from: data)
                return burgers
            } catch let error {
                // TODO: Error Handling
                debugPrint("Error \(error.localizedDescription)")
            }
        }
        return []
    }
}
