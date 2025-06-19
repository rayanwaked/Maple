//
//  CountdownStyleModifier.swift
//  Maple
//
//  Created by Rayan Waked on 6/19/25.
//

import SwiftUI

// MARK: Seconds to Minutes Conversion
struct CountdownFormat: FormatStyle {
    func format(_ value: Int) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: TimeInterval(value)) ?? ""
    }
}

extension FormatStyle where Self == CountdownFormat {
    static var secondsToMinutes: CountdownFormat { CountdownFormat() }
}

// MARK: Text Animation
struct CountdownStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .contentTransition(.numericText(countsDown: true))
            .transaction { t in
                t.animation = .default
            }
    }
}

extension View {
    func countdownTextStyle() -> some View {
        self.modifier(CountdownStyleModifier())
    }
}
