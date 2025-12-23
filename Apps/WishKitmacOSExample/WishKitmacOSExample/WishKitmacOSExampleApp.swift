//
//  WishKitmacOSExampleApp.swift
//  WishKitmacOSExample
//
//  Created by Martin Lasek on 12/21/25.
//

import SwiftUI
import WishKit

@main
struct WishKitmacOSExampleApp: App {
    init() {
        WishKit.configure(with: "60DE64CD-2AFA-4652-80B2-DA2965B88287")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
