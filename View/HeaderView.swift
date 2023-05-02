//
//  HeaderView.swift
//  Avocado
//
//  Created by Hassan Assiry on 30/04/2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTY
    @State private var showHeadline: Bool = false
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5,dampingFraction: 0.5,blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    var header: Header
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading ,spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .foregroundColor(.white)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .shadow(radius: 3)
                }
                .padding(.vertical,0)
                .padding(.horizontal,20)
                .frame(width: 281, height: 105)
            }
            .background(
                Color(red: 0, green: 0, blue: 0)
                    .opacity(0.25)
        )
            .offset(x:-66,y: showHeadline ? 75 : 220 )
            .animation(slideInAnimation)
            .frame(width: 285, height: 105 , alignment: .center)
            .onAppear {
                self.showHeadline = true
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[1])
            .previewLayout(.sizeThatFits)
    }
}
