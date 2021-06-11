//
//  NavigationCoordinator.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 03/06/21.
//

import Combine
import SwiftUI

//How to create a new coordinator
final class NavigationDetailCoordinator: Coordinator {

    private var isPresented: Binding<Bool>
    
    init(isPresented: Binding<Bool>) {
        self.isPresented = isPresented
    }
    
    func start(context: Context<Any>) -> some View {
        print("Started navigation detail coordinator 🚀")
        let view = DetailViewFactory.make(with: self)
        return NavigationLinkWrapper(destination: view, isPresented: isPresented)
    }
}

extension NavigationDetailCoordinator {
    func doSomething(){
        print("Just did some magic")
    }
    
}
