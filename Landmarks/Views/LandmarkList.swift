//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Caroline Davis on 13/12/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // creates a nav
        NavigationView {
            // creates a tableview
            List(landmarks) { landmark in
                // sending user to the details screen
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    // shows the component
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

// simple version to preview one device
//        LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                   LandmarkList()
                       .previewDevice(PreviewDevice(rawValue: deviceName))
                       .previewDisplayName(deviceName)
        }
    }
}
