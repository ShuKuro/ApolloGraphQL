//
//  LaunchViewModel.swift
//  ApolloGraphQL
//
//  Created by Shuhei Kuroda on 2022/04/21.
//

import Foundation

class LaunchViewModel: ObservableObject {
  
  init() {
    fetch()
  }
  
  func fetch() {
    Network.shared.apollo.fetch(query: LaunchListQuery()) { result in
      switch result {
      case .success(let graphQLResult):
        print("Success! Result: \(graphQLResult)")
      case .failure(let error):
        print("Failure! Error: \(error)")
      }
    }
  }
}
