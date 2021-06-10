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

    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func addChild(otherCoordinator: Coordinator) {
        
    }
    
    func start<T>(context: Context<T>) {
        print ("Started app coordinator 🚀")
        loadFirstPage()
    }
    
    func loadFirstPage(){
        let view = ContentViewFactory.make(with: self)
        let mainViewController = UIHostingController(rootView: view)
        window.rootViewController = mainViewController
        window.makeKeyAndVisible()
        
    }
}
