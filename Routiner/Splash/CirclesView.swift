//
//  CirclesView.swift
//  Routiner
//
//  Created by Yaroslav Orlov on 20.11.2024.
//

import SwiftUI

struct CirclesView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let maxSize = min(geometry.size.width - 68, geometry.size.height)
                
                ForEach(0..<5) { index in
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(
                            width: maxSize - CGFloat(index * 40),
                            height: maxSize - CGFloat(index * 40)
                        )
                        .foregroundColor(.white)
                        .opacity(0.1)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 34)
        }
    }
}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView()
    }
}
