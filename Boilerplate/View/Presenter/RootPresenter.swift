//
//  ContentPresenter.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 09/06/21.
//

import Combine
import SwiftUI

struct RootViewModel {
    let text: String
}

protocol RootPresenting: ObservableObject {
    associatedtype U: View
    var viewModel: RootViewModel { get }
    func navigate(isPresented: Binding<Bool>) -> U
}

final class RootPresenter: RootPresenting {
    @Published private(set) var viewModel: RootViewModel
  
    private let coordinator: RootCoordinator
    
    init(coordinator: RootCoordinator) {
        self.coordinator = coordinator
        self.viewModel = RootViewModel(text: "Ciao")
    }
    
    func navigate(isPresented: Binding<Bool>) -> some View {
        return coordinator.onButtonPressed(isPresented: isPresented)
    }
  }
