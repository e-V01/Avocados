//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Y K on 18.03.2024.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                
                Group {
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // RATING
                    RecipeRatingView(recipe: recipe)
                    // COOKING
                    RecipeCookingView(recipe: recipe)
                    // INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { i in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(i)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    // INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { i in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundStyle(Color("ColorGreenAdaptive"))
                            
                            Text(i)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .ignoresSafeArea(.all)
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
//                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                }
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        }
        .onAppear {
            withAnimation(
                Animation.easeInOut(duration: 1.5)
                    .repeatForever(autoreverses: true)
            ){
                self.pulsate.toggle()
            }
        }
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[0])
}
