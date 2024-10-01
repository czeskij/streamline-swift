//
//  SettingsView.swift
//  streamline
//
//  Created by jrajski on 30/09/2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var fileName: String = ""
    
    var body: some View {
        TabView {
            VStack {
                HStack {
                    TextField("Projects root path", text: $fileName)
                    Button("Select folder") {
                        let panel = NSOpenPanel()
                        panel.allowsMultipleSelection = false
                        panel.canChooseDirectories = true
                        if panel.runModal() == .OK {
                            self.fileName = panel.url?.absoluteString ?? "<none>"
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

#Preview {
    SettingsView()
}
