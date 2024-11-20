//
//  OnboardingView.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 20.11.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        ZStack {
            Color.backgroundGradient
                .ignoresSafeArea()
            
            CirclesView()
            VStack {
                Spacer()
                firstOnboardingStateText
                buttonsContainer
            } 
        }
    }
}

extension OnboardingView {
    private var firstOnboardingStateText: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Create Good Habits")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
            
            Text("Change your life by slowly adding new healty habits and sticking to them.")
                .foregroundColor(.primaryBlue20)
                .font(.system(size: 14, weight: .medium))
            
            HStack {
                ForEach(0..<3) { index in
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(index == 0 ? .white : .primaryBlue60)
                }
            }
        }
    }
}

extension OnboardingView {
    private var buttonsContainer: some View {
        VStack(spacing: 12) {
            Button(action: {}) {
                Text("Next")
                    .foregroundColor(.black)
                    .font(.system(size: 14, weight: .medium))
                    .frame(width: UIScreen.main.bounds.width - 48)
                    .frame(height: 52)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .tint(.white)
            
            HStack(spacing: 25) {
                Button(action: {}) {
                    HStack {
                        Image("apple")
                        
                        Text("Apple")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                            .frame(height: 36)
                    }
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 40))
                .tint(.white)
                
                Button(action: {}) {
                    HStack {
                        Image("google")
                        
                        Text("Google")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                            .frame(height: 36)
                    }
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 40))
                .tint(.white)
                
                Button(action: {}) {
                    HStack {
                        Image("facebook")
                        
                        Text("Facebook")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                            .frame(height: 36)
                    }
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 40))
                .tint(.white)
            }
            
            Text("By continuing you agree Terms of Services & Privacy Policy ")
                .foregroundColor(.primaryBlue40)
                .font(.system(size: 12, weight: .medium))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
