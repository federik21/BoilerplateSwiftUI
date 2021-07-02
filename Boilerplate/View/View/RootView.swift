//
//  ContentView.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 31/05/21.
//

import SwiftUI

struct RootView<T: RootPresenting>: View {
    @ObservedObject var presenter: T
    
    var body: some View {
        NavigationButton(contentView: Text("Go Detail"),
                         navigationView: { isPresented in
            self.presenter.navigate(isPresented: isPresented)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(presenter: RootPresenter(coordinator: RootCoordinator(window: UIWindow(), auth: AuthManagerSharedPrefs())))
    }
}
