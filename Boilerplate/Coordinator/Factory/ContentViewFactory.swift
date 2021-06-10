//
//  LoginViewFactory.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 09/06/21.
//

import SwiftUI

enum ContentViewFactory {
    static func make(with coordinator: Coordinator) -> some View {
        let presenter = ContentPresenter(coordinator: coordinator)
        let view = ContentView(presenter: presenter)
        return view
    }
}
