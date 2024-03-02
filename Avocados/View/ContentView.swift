//
//  ContentView.swift
//  Avocados
//
//  Created by Y K on 01.03.2024.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headerData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //MARK: HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                //MARK: DISHES
                Text("Avocado dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)

                //MARK: FACTS
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                //MARK: RECIPE
                Text("Avocados Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { i in
                    RecipeCardView(recipe: i)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)

                
                //MARK: FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocado but were afraid too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .ignoresSafeArea(.all)
        .padding(0)
    }
}

#Preview {
    ContentView(headers: headerData, facts: factsData, recipes: recipesData)
}
