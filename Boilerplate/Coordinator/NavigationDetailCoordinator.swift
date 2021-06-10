//
//  NavigationCoordinator.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 03/06/21.
//

import Combine
import SwiftUI

final class NavigationDetailCoordinator: Coordinator {

    private var isPresented: Binding<Bool>
    
    init(isPresented: Binding<Bool>) {
        self.isPresented = isPresented
    }
    
    func start(context: Context<Any>) -> some View {
        let view = DetailViewFactory.make(with: self)
        return NavigationLink(destination: view, isActive: isPresented) {
            EmptyView()
        }
    }
    
    func aButtonPressed(isPresented: Binding<Bool>) -> some View {
        print("You rock! ")
        return EmptyView()
    }
    
}
