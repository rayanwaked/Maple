//
//  AuthenticationFeature.swift
//  MapleInterface
//
//  Created by Rayan Waked on 6/21/25.
//

// MARK: - Import
import SwiftUI

// MARK: - View
struct AuthenticationFeature: View {
    // MARK: - Variable
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1517495306984-f84210f9daa8?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
                .ignoresSafeArea(.all)
                .scaledToFit()
                .zIndex(-1)
            
            VStack {
                Spacer()
                
                Image(.mapleIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: ScreenSize.width * 0.7
                    )
                Text("Maple")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("for Bluesky")
                
                Spacer()
                
                ButtonComponent()
                ButtonComponent(style: .secondary)
            }
            .padding()
        }
    }
}

// MARK: - Preview
#Preview {
    AuthenticationFeature()
}
