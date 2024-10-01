//
//  streamlineApp.swift
//  streamline
//
//  Created by jrajski on 30/09/2024.
//

import SwiftUI

@Observable
struct State {
    
}

@main
struct streamlineApp: App {
    @State var fileName: String = ""
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    NSLog("test")
                }
        }
        Window("Settings", id: "settings") {
            SettingsView()
        }
    }
}
