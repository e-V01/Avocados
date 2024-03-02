//
//  FactsView.swift
//  Avocados
//
//  Created by Y K on 02.03.2024.
//

import SwiftUI

struct FactsView: View {
    var body: some View {
        ZStack {
            Text("It’s little wonder there are so many health benefits when a single serve of avocado (1/4 or 50g) boasts healthy fats, fibre, folate, niacin, vitamins C, B5, E & K, potassium and antioxidants.")
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [
                                                        Color("ColorGreenMedium"),
                                                                       Color("ColorGreenLight")]),
                                           startPoint: .leading,
                                           endPoint: .trailing))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundStyle(Color.white)
            
            Image("avocado-fact-2")
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(Color.white)
                    .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [
                            Color("ColorGreenMedium"),
                                           Color("ColorGreenLight")]), startPoint: .trailing,
                                            endPoint: .leading))
                        .frame(width: 82, height: 82, alignment: .center)
                    )
                .background(
                Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150) 
            // half of width from previous frame
            
        }
    }
}

#Preview {
    FactsView()
        .previewLayout(.fixed(width: 400, height: 220))
}
