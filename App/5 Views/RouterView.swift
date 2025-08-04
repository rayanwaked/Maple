//
//  RouterView.swift
//  Maple
//
//  Created by Rayan Waked on 7/31/25.
//

import SwiftUI
internal import Combine

// MARK: - COORDINATOR
@Observable
final class RouterCoordinator {
    enum views {
        case home, settings
    }
    
    var currentView = views.home
}

// MARK: - VIEW
struct RouterView: View {
    @Environment(RouterCoordinator.self) var routerCoordinator
    
    var body: some View {
        ZStack {
            switch routerCoordinator.currentView {
            case .home:
                VStack {
                    ContentView()
                    Button("Go settings") {
                        routerCoordinator.currentView = .settings
                    }
                }
            case .settings:
                VStack {
                    Text("Settings")
                    Button("Go home") {
                        routerCoordinator.currentView = .home
                    }
                }
            }
        }
    }
}

// MARK: - EXTENSION
extension RouterView {
    var some: some View {
        Text("Hello world")
    }
}

// MARK: - PREVIEW
#Preview {
    @Previewable @State var routerCoordinator: RouterCoordinator = .init()
    
    RouterView()
        .environment(routerCoordinator)
}
