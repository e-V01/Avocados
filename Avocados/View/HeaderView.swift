//
//  HeaderView.swift
//  Avocados
//
//  Created by Y K on 01.03.2024.
//

import SwiftUI

struct HeaderView: View {
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, 
                         dampingFraction: 0.5,
                         blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 0) {
                    Text("Avocado".uppercased())
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .shadow(radius: 3)
                    
                    Text("Avocados are a powerhouse ingridients at any meal at any time")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
            .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -40, y: showHeadline ? 75 : 220)
            .onAppear {
                withAnimation(slideInAnimation) {
                    self.showHeadline.toggle()
                }
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

#Preview {
    HeaderView()
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
}
