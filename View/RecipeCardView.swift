//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Hassan Assiry on 01/05/2023.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTY
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    // MARK: - BODY
    var body: some View {
        
        VStack (alignment:.leading ,spacing: 0){
            Image(recipe.image)
                .resizable()
            .scaledToFit()
            .overlay {
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(.white)
                            .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"),radius: 2,x: 0,y: 0)
                        .padding(.trailing,20)
                        .padding(.top,22)
                        Spacer()
                    }
                }

            }
            
            VStack(alignment: .leading,spacing: 12) {
                 // Title
                Text(recipe.title)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                 // Headline
                Text(recipe.headline)
                    .font(.system(.body,design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                 // Rates
               RecipeRatingView(recipe: recipe)
                
                 // Cooking
                RecipeCookingView(recipe: recipe)
            }
            .padding()
//            .padding(.bottom,12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25) ,radius: 8,x: 0,y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
