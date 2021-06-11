//
//  DetailView.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 10/06/21.
//

import SwiftUI

struct DetailView<T: DetailPresenting>: View {
    @ObservedObject var presenter: T
    
    var body: some View {
        Button(presenter.viewModel.text, action: {
            presenter.userWantsToDoSomethingWithButton()
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    @State static var isActive = false

    static var previews: some View {
        DetailViewFactory.make(with: NavigationDetailCoordinator (isPresented: $isActive))
    }
}
