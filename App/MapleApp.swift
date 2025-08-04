//
//  MapleApp.swift
//  Maple
//
//  Created by Rayan Waked on 6/14/25.
//

import SwiftUI

// MARK: - APP
@main
struct MapleApp: App {
    // MARK: -  PROPERTIES
    @State private var appState = AppState()
    @State private var routerCoordinator = RouterCoordinator()
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
                .environment(routerCoordinator)
        }
    }
}
