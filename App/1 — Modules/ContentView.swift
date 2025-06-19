//
//  ContentView.swift
//  Maple
//
//  Created by Rayan Waked on 6/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            Tab("Settings", systemImage: "gearshape") {
                SettingsView()
            }
        }
        .tint(Color.accentColor)
    }
}

#Preview {
    ContentView()
}
