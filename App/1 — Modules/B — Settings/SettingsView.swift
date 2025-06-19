//
//  SettingsView.swift
//  Maple
//
//  Created by Rayan Waked on 6/18/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Text("Maple")
                    Text("Terms of Service")
                    Text("Privacy Policy")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
