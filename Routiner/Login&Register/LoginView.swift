//
//  LoginView.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 21.11.2024.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.router) var router
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color("primaryBlack20")
                .ignoresSafeArea()
            VStack {
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.system(size: 12, weight: .bold))
                    TextField("Enter your email", text: $email)
                    Divider()
                        .frame(height: 1)
                        .background(Color.primaryBlack20)
                    Text("Password")
                        .font(.system(size: 12, weight: .bold))
                    TextField("Enter your password", text: $password)
                    Divider()
                        .frame(height: 1)
                        .background(Color.primaryBlack20)
                    Button(action: {}) {
                        Text("I forgot my password")
                            .foregroundColor(.primaryBlack60)
                    }
                    .padding(.top, 16)
                }
                .padding(.horizontal, 24)
                Spacer()
                VStack(spacing: 24) {
                    Button(action: {}) {
                        Text("Don’t have account? Let’s create!")
                            .foregroundColor(.primaryBlue100)
                            .font(.system(size: 20, weight: .medium))
                    }
                    Button(action: {
                        router.showScreen(.push) { _ in HomeView()}
                    }) {
                        Text("Next")
                            .modifier(PrimaryBlueButton())
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .tint(.primaryBlue100)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
