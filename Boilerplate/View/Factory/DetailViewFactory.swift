//
//  LoginFactory.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 10/06/21.
//

import SwiftUI

enum DetailViewFactory {
    static func make(with coordinator: NavigationDetailCoordinator) -> some View {
        let presenter = DetailPresenter(coordinator: coordinator)
        let view = DetailView(presenter: presenter)
        return view
    }
}
