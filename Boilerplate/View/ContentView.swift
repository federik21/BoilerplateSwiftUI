//
//  ContentView.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 31/05/21.
//

import SwiftUI

struct ContentView<T: ContentPresenting>: View {
    @ObservedObject var presenter: T

    var body: some View {
        Text(presenter.viewModel.text)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(presenter: ContentPresenter(coordinator: AppCoordinator(window: UIWindow())))
    }
}
