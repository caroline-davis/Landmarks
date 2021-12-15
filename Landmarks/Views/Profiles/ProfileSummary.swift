//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Caroline Davis on 15/12/21.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData

    var profile: Profile

    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)

                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            }

        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
