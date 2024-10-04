//
//  streamlineApp.swift
//  streamline
//
//  Created by jrajski on 30/09/2024.
//

import SwiftUI

@Observable
class AppState {
    var fileName = ""
}

@main
struct streamlineApp: App {
    @State private var state = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView(state: $state)
                .onAppear {
                    NSLog("test")
                }
        }
        Window("Settings", id: "settings") {
            SettingsView(state: $state)
        }
    }
}
