//
//  ContentView.swift
//  Avocado
//
//  Created by Hassan Assiry on 30/04/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    var headers: [Header] = headersData
    var facts : [Fact] = factsData
    var recipes: [Recipe] = recipesData
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center,spacing: 20) {
                // MARK: - header
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(alignment: .top,spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                // MARK: - dishes
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                
                // MARK: - facts
                VStack(alignment: .center,spacing: 20) {
                    Text("Avocado Facts")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(alignment: .top,spacing: 60) {
                            ForEach(facts) { item in
                                FactsView(fact: item)
                            }
                        }
                        .padding(.vertical)
                        .padding(.trailing,20)
                        .padding(.leading,60)
                    }
                    // MARK: - Recipe
                    Text("Avocados Recipes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment:.center , spacing: 20){
                        ForEach(recipes) { item in
                            RecipeCardView(recipe: item)
                        }
                    }.frame(maxWidth: 640)
                    
                    
                    
                // MARK: - FOOTER
                Text("All about Avocados")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())

                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body,design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                    
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData ,facts: factsData,recipes: recipesData)
    }
}
