//
//  ApolloGraphQLApp.swift
//  ApolloGraphQL
//
//  Created by Shuhei Kuroda on 2022/04/08.
//

import SwiftUI

@main
struct ApolloGraphQLApp: App {
  @StateObject var launchViewModel = LaunchViewModel()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(launchViewModel)
    }
  }
}
