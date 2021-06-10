//
//  LoginViewFactory.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 09/06/21.
//

import SwiftUI

enum RootViewFactory {
    static func make(with coordinator: RootCoordinator) -> some View {
        let presenter = RootPresenter(coordinator: coordinator)
        let view = RootView(presenter: presenter)
        return view
    }
}
