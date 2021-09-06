//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by James McDougall on 9/6/21.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers(completed: {result in
            DispatchQueue.main.async {
                switch result {
                case . success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        })
    }

}
