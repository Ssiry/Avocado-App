//
//  RecipeDetailView.swift
//  Avocado
//
//  Created by Hassan Assiry on 01/05/2023.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    @State private var plusate: Bool = false
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack {
                // IMAGE
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
            }
            Group{
                
                // TITLE
                Text(recipe.title)
                    .font(.system(.largeTitle,design: .serif))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(.top,10)
                 
                // RATING
                    RecipeRatingView(recipe: recipe)
                // COOKING
                    RecipeCookingView(recipe: recipe)
                // INGREDIENTS
                    Text("Ingredients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .leading ,spacing: 5) {
                    ForEach(recipe.ingredients, id: \.self) { item in
                        VStack(alignment: .leading ,spacing: 5) {
                            Text(item)
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
                
                ForEach(recipe.instructions, id: \.self) { item in
                    VStack(alignment: .center ,spacing: 5) {
                        Image(systemName: "chevron.down.circle")
                            .resizable()
                            .frame(width: 42,height: 42,alignment: .center)
                            .imageScale(.large)
                            .font(Font.title.weight(.ultraLight))
                            .foregroundColor(Color("ColorGreenAdaptive"))
                        
                        
                        Text(item)
                            .lineLimit(nil)
                            .frame(minHeight: 100)
                            .font(.system(.body,design: .serif))
                            .multilineTextAlignment(.center)
                         Divider()
                    }
                }

            }
            .padding(.horizontal,24)
            .padding(.vertical,12)
        }
        .edgesIgnoringSafeArea(.all)
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button {
                        self.presentaionMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(self.plusate ? 1 : 0.6)
                            .scaleEffect(self.plusate ? 1.2 : 0.8 , anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                }
                    .padding(.trailing,24)
                    .padding(.top,20)
                    Spacer()
                }
            }
        }
        .onAppear {
            self.plusate.toggle()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
        
    }
}
