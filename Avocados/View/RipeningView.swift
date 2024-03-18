//
//  RipeningView.swift
//  Avocados
//
//  Created by Y K on 18.03.2024.
//

import SwiftUI

struct RipeningView: View {
    @State private var slideInAnimation: Bool = false
    var body: some View {
        VStack {
            Image("avocado-ripening-1")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(Circle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                    )
                .zIndex(1)// order of View inside the View
                .offset(y: 
                            slideInAnimation ? 55 : -55)
        
            VStack(alignment: .center, spacing: 10) {
                // STAGE
                VStack(alignment: .center, spacing: 0) {
                    Text("1")
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    Text("Stage")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundStyle(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                // TITLE
                Text("Hard")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                // DESCRIPTION
                Spacer()
                Text("Fresh off the tree, the avocado is very hard with no give")
                    .foregroundStyle(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                
                Spacer()
                
                // RIPENESS
                Text("5+ days")
                    .foregroundStyle(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                        )
                // INSTRUCTIONS
                Text("Hold avocados at room temp untill the y are fully ripe")
                    .font(.footnote)
                    .foregroundStyle(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(.linearGradient(Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 1)) {
                self.slideInAnimation.toggle()
            }
        }
    }
}

#Preview {
    RipeningView()
}
