//
//  RootView.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 21.11.2024.
//

import SwiftUI
import SwiftfulRouting

struct RootView: View {
    var body: some View {
        RouterView { _ in
            SplashView()
        }
    }
}
