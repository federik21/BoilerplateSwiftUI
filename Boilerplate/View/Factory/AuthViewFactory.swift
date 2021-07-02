//
//  AuthViewFactory.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 14/06/21.
//

import SwiftUI

enum AuthViewFactory {
    static func make(with coordinator: RootCoordinator) -> some View {
        let presenter = RootPresenter(coordinator: coordinator)
        let view = RootView(presenter: presenter)
        return view
    }
}
