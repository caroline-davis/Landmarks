//
//  CircleImage.swift
//  Landmarks
//
//  Created by Caroline Davis on 13/12/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().strokeBorder(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}


struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
