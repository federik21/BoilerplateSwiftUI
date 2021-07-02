//
//  RootCoordinator.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 10/06/21.
//

import SwiftUI

class RootCoordinator: Coordinator {
    typealias V = AnyView
    
    private weak var window: UIWindow?
    
    var auth: AuthManager
    
    var isUserLoggedIn: Bool {
        return auth.userLogged
    }
        
    init(window: UIWindow?, auth: AuthManager) {
        self.window = window
        self.auth = auth
    }
    
    func start(context: Context<Any>) -> V {
        print("Started root coordinator 🚀")
        loadLaunchScreen()
        return AnyView(EmptyView())
    }
    
    func loadLaunchScreen(){
        // When loading a view, always use a factory that builds a SwiftUI View with a Presenter
        let view = RootViewFactory.make(with: self) 
        let navigation = NavigationView { view }

        let mainViewController = UIHostingController(rootView: navigation)
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()
    }
    
    func onButtonPressed(isPresented: Binding<Bool>) -> some View {
        let coordinator = NavigationDetailCoordinator(isPresented: isPresented)
        return addChild( coordinator, with: .none)
    }
}
