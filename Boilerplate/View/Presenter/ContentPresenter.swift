//
//  ContentPresenter.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 09/06/21.
//

import Combine

struct ContentViewModel {
    let text: String
}

protocol ContentPresenting: ObservableObject {
    var viewModel: ContentViewModel { get }
}

final class ContentPresenter: ContentPresenting {
    @Published private(set) var viewModel: ContentViewModel
  
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
        self.viewModel = ContentViewModel(text: "Ciao")
    }
}
