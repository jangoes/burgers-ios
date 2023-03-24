//
//  burgers_iosApp.swift
//  burgers-ios
//
//  Created by John Ellie Go on 3/24/23.
//

import SwiftUI

@main
struct BurgersApp: App {
    init() {
        // For image caching:
        URLCache.shared.memoryCapacity = 10_000_000 // ~10 MB memory space
        URLCache.shared.diskCapacity = 1_000_000_000 // ~1GB disk cache space
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
