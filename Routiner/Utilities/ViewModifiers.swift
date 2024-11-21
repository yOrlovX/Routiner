//
//  ViewModifiers.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 21.11.2024.
//

import SwiftUI

struct PrimaryWhiteButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 14, weight: .medium))
            .frame(width: UIScreen.main.bounds.width - 48)
            .frame(height: 52)
    }
}
