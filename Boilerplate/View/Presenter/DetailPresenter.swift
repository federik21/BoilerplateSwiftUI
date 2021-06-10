//
//  DetailPresenter.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 10/06/21.
//

import SwiftUI

protocol DetailPresenting: ObservableObject {
    associatedtype U: View
    var viewModel: DetailViewModel { get }
    func navigate(isPresented: Binding<Bool>) -> U
}

final class DetailPresenter: DetailPresenting {
    @Published private(set) var viewModel: DetailViewModel
  
    private let coordinator: NavigationDetailCoordinator
    
    init(coordinator: NavigationDetailCoordinator) {
        self.coordinator = coordinator
        self.viewModel = DetailViewModel(text: "Ciao")
    }
    
    func navigate(isPresented: Binding<Bool>) -> some View {
        return coordinator.aButtonPressed(isPresented: isPresented)
    }
  }
