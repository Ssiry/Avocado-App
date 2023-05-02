//
//  RipeningStagesView.swift
//  Avocado
//
//  Created by Hassan Assiry on 30/04/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTY
    var ripeningStages: [Ripening] = ripeningData
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            VStack {
                Spacer()
                HStack (alignment: .center,spacing: 25){
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
