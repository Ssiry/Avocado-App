//
//  FactsView.swift
//  Avocado
//
//  Created by Hassan Assiry on 01/05/2023.
//

import SwiftUI

struct FactsView: View {
    // MARK: - PROPERTY
    let fact : Fact
    // MARK: - BODY
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading,55)
                .padding(.trailing,10)
                .padding(.vertical,3)
                .frame(width: 300,height: 135,alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
            .foregroundColor(.white)
            
            Image(fact.image)
                .resizable()
                .scaledToFit()
                .frame(width: 66,height: 66,alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(.white)
                    .frame(width: 72,height: 72,alignment: .center)
                )
                .background(
                    Circle()
                        .fill( LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82,height: 82,alignment: .center)

                )
                .background(
                Circle()
                    .fill(Color("ColorAppearnceAdaptive"))
                    .frame(width: 90,height: 90,alignment: .center)
                )

                .offset(x: -150)
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factsData[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
