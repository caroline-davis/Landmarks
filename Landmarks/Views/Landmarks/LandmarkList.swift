//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Caroline Davis on 13/12/21.
//
import SwiftUI

struct LandmarkList: View {
    // thism @EnvironmentObject happens in the children and .environmentObject only happens in the parent class
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks:[Landmark] {
        modelData.landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }

    var body: some View {
        // creates a nav
        NavigationView {
            // creates a tableview
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    // sending user to the details screen
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        // shows the component
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
       LandmarkList()
        .environmentObject(ModelData())
    }
}

// to preview many dif iphone sizes
//ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//           LandmarkList()
//               .previewDevice(PreviewDevice(rawValue: deviceName))
//               .previewDisplayName(deviceName)
//}

// simple version to preview one device
//        LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
