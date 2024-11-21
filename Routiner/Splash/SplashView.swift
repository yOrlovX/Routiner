//
//  SplashView.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 20.11.2024.
//

import SwiftUI

struct SplashView: View {
    @State private var showOnboarding: Bool = false
    
    var body: some View {
        ZStack {
            if showOnboarding {
                OnboardingView()
            } else {
                splashState
            }
        }
    }
}

extension SplashView {
    private var splashState: some View {
        ZStack {
            Color.backgroundGradient
                .ignoresSafeArea()
            CirclesView()
            HStack(spacing: 15) {
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 73, height: 73)
                Text("Routiner")
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                self.showOnboarding = true
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
