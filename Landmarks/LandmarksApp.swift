//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Caroline Davis on 13/12/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    // Use the @StateObject attribute to initialize a model object for a given property only once during the life time of the app. This is true when you use the attribute in an app instance, as shown here, as well as when you use it in a view.
    // this .environmentObject only happens in the parent class

    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
