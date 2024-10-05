//
//  ContentView.swift
//  streamline
//
//  Created by jrajski on 30/09/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var state: AppState
    @Environment(\.openWindow) var openWindow
    
    var body: some View {
        Group {
            if state.fileName.isEmpty {
                firstStartupView
            } else {
                mainView
            }
        }
    }
    
    var mainView: some View {
        VStack(alignment: .leading) {
            Text("hello, \(state.fileName)")
        }
        
    }
    
    var firstStartupView: some View {
        VStack{
            Text("Hi! Go to settings to set your projects root directory first.")
            Button(action: {
                openWindow(id: "settings")
            }) {
                Text("Settings")
            }
        }
        .padding()
        .frame(width: 400.0, height: 300.0)
    }
}
