//
//  ContentView.swift
//  ApolloGraphQL
//
//  Created by Shuhei Kuroda on 2022/04/08.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var launchViewModel: LaunchViewModel
  
  var body: some View {
    ScrollView {
      ForEach(launchViewModel.launches) { launch in
        LaunchCard(launch: launch)
        
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
