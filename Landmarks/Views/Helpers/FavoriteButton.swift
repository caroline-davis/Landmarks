//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Caroline Davis on 14/12/21.
//

import SwiftUI

struct FavoriteButton: View {
    // Add an isSet binding that indicates the button’s current state, and provide a constant value for the preview.
    // Because you use a binding, changes made inside this view propagate back to the data source.

    @Binding var isSet: Bool

    var body: some View {
            Button {
                isSet.toggle()
            } label: {
                Label("", systemImage: isSet ? "star.fill" : "star")
                    .foregroundColor(isSet ? .yellow : .gray)
// this is not working (have changed to an empty string but not good for accessibility
//                    .labelStyle(.iconOnly)
            }
        }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
