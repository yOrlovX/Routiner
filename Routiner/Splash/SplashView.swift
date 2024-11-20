//
//  SplashView.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 20.11.2024.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
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
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
