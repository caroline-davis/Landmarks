//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Caroline Davis on 16/12/21.
//

import SwiftUI

struct FeatureCard: View {

    var landmark: Landmark

    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay(
                ZStack(alignment: .bottomLeading) {
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .font(.title)
                            .bold()
                        Text(landmark.park)
                    }
                    .padding()
                }
                .foregroundColor(.white),
                alignment: .bottomLeading
            )
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}
