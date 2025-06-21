//
//  ButtonComponent.swift
//  MapleInterface
//
//  Created by Rayan Waked on 6/20/25.
//

// MARK: - Import
import SwiftUI

// MARK: - Enum
enum ButtonStyleType {
    case primary, secondary, alert
    var color: Color {
        switch self {
        case .primary: return Color(.maple)
        case .secondary: return .gray
        case .alert: return .red
        }
    }
}

// MARK: - View
struct ButtonComponent: View {
    // MARK: - Variable
    var label: String = "Label"
    var style: ButtonStyleType = .primary
    
    // MARK: - Body
    var body: some View {
            if #available(iOS 26, *) {
                Button {
                    // Action here
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .foregroundStyle(style.color)
                        Text(label)
                            .foregroundStyle(.background)
                    }
                }
                .frame(
                    maxWidth: ScreenSize.width,
                    maxHeight: ScreenSize.height * 0.075
                )
                .glassEffect()
            } else {
                Button {
                    // Action here
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .foregroundColor(style.color)
                        Text(label)
                            .foregroundColor(.white)
                    }
                }
                .frame(
                    maxWidth: ScreenSize.width,
                    maxHeight: ScreenSize.height * 0.075
                )
            }
    }
}

// MARK: - Preview
#Preview {
    ButtonComponent(label: "Primary", style: .primary)
    ButtonComponent(label: "Secondary", style: .secondary)
    ButtonComponent(label: "Alert", style: .alert)
}

