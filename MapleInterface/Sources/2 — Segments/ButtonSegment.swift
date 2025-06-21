//
//  ButtonSegment.swift
//  MapleInterface
//
//  Created by Rayan Waked on 6/20/25.
//

// MARK: - Import
import SwiftUI

// MARK: - View
struct ButtonSegment: View {
    // MARK: - Variable
    var label: String = "Label"
    
    // MARK: - Body
    var body: some View {
        VStack {
            ButtonComponent(label: label, style: .primary)
            ButtonComponent(label: label, style: .secondary)
        }
    }
}

// MARK: - Preview
#Preview {
    ButtonSegment()
}
