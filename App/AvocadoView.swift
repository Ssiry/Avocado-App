//
//  AvocadoView.swift
//  Avocado
//
//  Created by Hassan Assiry on 30/04/2023.
//

import SwiftUI

struct AvocadoView: View {
    // MARK: - PROPERTY
    @State private var pulsateAnimation: Bool = false
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240,height: 240,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"),radius: 12,x: 0,y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever())
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42,weight: .bold, design: .serif))
                    .foregroundColor(.white)
                .shadow(color: Color("ColorBlackTransparentDark"),radius: 4 ,x: 0,y: 4)
                
                Text("""
                     Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                     """)
                .lineLimit(6)
                .font(.system(.headline ,design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640 , maxHeight: 170)
            }
            .padding()
            
            Spacer()
        }
        .background(
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulsateAnimation.toggle()
        }
    }
}

struct AvocadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoView()
            .environment(\.colorScheme, .dark)
    }
}
