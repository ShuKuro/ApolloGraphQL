//
//  LaunchCard.swift
//  ApolloGraphQL
//
//  Created by Shuhei Kuroda on 2022/04/22.
//

import SwiftUI

struct LaunchCard: View {
  var launch: Launches.Launch
  
    var body: some View {
      VStack(alignment: .leading) {
        Text("Launch ID :\(launch.id)")
        Text("Site: \(launch.site)")
        Text("Mission: \(launch.mission.name)")
        Text("Rocket name: \(launch.rocket.name)")
        Text(launch.rocket.id)
      }
      .frame(maxWidth: 300, alignment: .leading)
      .padding()
      .background(Color.cyan)
      .cornerRadius(20)
    }
}

struct LaunchCard_Previews: PreviewProvider {
    static var previews: some View {
        LaunchCard(launch: launchPreview)
    }
}
