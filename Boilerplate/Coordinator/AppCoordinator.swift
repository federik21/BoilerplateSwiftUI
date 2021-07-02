//
//  AppCoordinator.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 03/06/21.
//

import Foundation
import UIKit
import SwiftUI

class AppCoordinator: Coordinator {

    typealias V = AnyView

    private weak var window: UIWindow?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    @discardableResult
    func start(context: Context<Any>) -> AnyView {
        print ("Started app coordinator 🚀")
        
        // Init the root coordinator, using its window, from SceneDelegate.
        let coordinator = RootCoordinator(window: window, auth: AuthManagerSharedPrefs())
        return AnyView(addChild(coordinator, with: .none))
    }
    
}
