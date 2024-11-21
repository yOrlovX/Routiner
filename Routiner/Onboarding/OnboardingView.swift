//
//  OnboardingView.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 20.11.2024.
//

import SwiftUI

enum OnboardingState {
    case first
    case second
    case third
}

struct OnboardingView: View {
    @Environment(\.router) var router
    @State private var onboardingState: OnboardingState = .first
    
    var body: some View {
        ZStack {
            Color.backgroundGradient
                .ignoresSafeArea()
            
            CirclesView()
            VStack {
                Spacer()
                
                switch onboardingState {
                case .first:
                    firstOnboardingStateText
                case .second:
                    secondOnboardingStateText
                case .third:
                    thirdOnboardingStateText
                }
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
            .padding(.top, 24)
            
            Button(action: { onboardingState = .second }) {
                Text("Next")
                    .modifier(PrimaryWhiteButton())
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .tint(.white)
            .padding(.top, 40)
        }
    }
    
    private var secondOnboardingStateText: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Track Your Progress")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
            
            Text("Everyday you become one step closer to your goal. Don’t give up!")
                .foregroundColor(.primaryBlue20)
                .font(.system(size: 14, weight: .medium))
            
            HStack {
                ForEach(0..<3) { index in
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(index == 1 ? .white : .primaryBlue60)
                }
                .padding(.top, 24)
            }
            Button(action: { onboardingState = .third }) {
                Text("Next")
                    .modifier(PrimaryWhiteButton())
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .tint(.white)
            .padding(.top, 40)
        }
    }
    
    private var thirdOnboardingStateText: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Stay Together and Strong")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
            
            Text("Find friends to discuss common topics. Complete challenges together.")
                .foregroundColor(.primaryBlue20)
                .font(.system(size: 14, weight: .medium))
            
            HStack {
                ForEach(0..<3) { index in
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(index == 2 ? .white : .primaryBlue60)
                }
                .padding(.top, 24)
            }
            Button(action: { router.showScreen(.push) { _ in
                LoginView()
            }}) {
                Text("Continue with E-mail")
                    .modifier(PrimaryWhiteButton())
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .tint(.white)
            .padding(.top, 40)
        }
    }
}

extension OnboardingView {
    private var buttonsContainer: some View {
        VStack(spacing: 12) {
            HStack(spacing: 5) {
                Button(action: {}) {
                    HStack {
                        Image("apple")
                        
                        Text("Apple")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                            .frame(height: 36)
                    }
                    .padding(.horizontal, 10)
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
                    .padding(.horizontal, 10)
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
                    .padding(.horizontal, 10)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 40))
                .tint(.white)
            }
            
            Text("By continuing you agree Terms of Services & Privacy Policy ")
                .foregroundColor(.primaryBlue40)
                .font(.system(size: 12, weight: .medium))
        }
        .padding(.top, 12)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
