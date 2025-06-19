//
//  HomeView.swift
//  Maple
//
//  Created by Rayan Waked on 6/16/25.
//

import SwiftUI
internal import Combine

struct HomeView: View {
    @State private var timeRemaining = 0
    @State private var timeSet = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationStack {
            List {
                Button("1 Minute") {
                    timeRemaining = 60
                    timeSet = 60
                }
                Button("5 Minutes") {
                    timeRemaining = 300
                    timeSet = 300
                }
                Button("10 Minutes") {
                    timeRemaining = 600
                    timeSet = 600
                }
                
                Text("\(timeRemaining, format: .secondsToMinutes)")
                    .monospaced()
                    .countdownTextStyle()
                    .onReceive(timer) { _ in
                        if timeRemaining > 0 {
                            timeRemaining -= 1
                        }
                    }
                
                if #available(iOS 26.0, *) {
                    Circle()
                        .fill(.clear)
                        .glassEffect()
                        .overlay(
                            Circle().trim(from:0, to: progress())
                                .stroke(style: StrokeStyle(
                                        lineWidth: 15,
                                        lineCap: .round,
                                        lineJoin:.round))
                                .foregroundStyle(timeRemaining == 0 ? Color.green : Color.orange)
                                .animation(.easeInOut, value: [timeRemaining, timeSet])
                        )
                } else {
                    Circle()
                        .fill(.clear)
                        .overlay(
                            Circle().trim(from:0, to: progress())
                                .stroke(style: StrokeStyle(
                                        lineWidth: 15,
                                        lineCap: .round,
                                        lineJoin:.round))
                                .animation(.easeInOut, value: [timeRemaining, timeSet])
                        )
                }
            }
            .navigationTitle(Text("Maple"))
            .scrollContentBackground(.hidden)
            .background(Color.orange.opacity(0.15))
        }
    }
    
    func progress() -> CGFloat {
        return (CGFloat(timeRemaining) / CGFloat(timeSet))
    }
}

#Preview {
    HomeView()
}
