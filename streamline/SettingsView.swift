//
//  SettingsView.swift
//  streamline
//
//  Created by jrajski on 30/09/2024.
//

import SwiftUI

struct SettingsView: View {
    @Binding var state: AppState
    
    var body: some View {
        TabView {
            VStack {
                HStack {
                    TextField("Projects root path", text: $state.fileName)
                    Button("Select folder") {
                        let panel = NSOpenPanel()
                        panel.allowsMultipleSelection = false
                        panel.canChooseDirectories = true
                        if panel.runModal() == .OK {
                            state.fileName = panel.url?.absoluteString ?? "<none>"
                        }
                    }
                }
            }
            .padding()
            .tabItem {
                Text("General")
            }
        }
    }
}
