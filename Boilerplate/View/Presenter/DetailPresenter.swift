//
//  DetailPresenter.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 10/06/21.
//

import SwiftUI

protocol DetailPresenting: ObservableObject {
    var viewModel: DetailViewModel { get }
    func userWantsToDoSomethingWithButton()
}

final class DetailPresenter: DetailPresenting {
    @Published private(set) var viewModel: DetailViewModel
  
    private let coordinator: NavigationDetailCoordinator
    
    init(coordinator: NavigationDetailCoordinator) {
        self.coordinator = coordinator
        self.viewModel = DetailViewModel(text: "Bao")
    }
    
    func userWantsToDoSomethingWithButton(){
        coordinator.doSomething()
    }
  }
