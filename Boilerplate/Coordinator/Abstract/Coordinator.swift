//
//  Coordinator.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 09/06/21.
//

import Foundation

enum Context<T> {
    case some(T)
    case error(Error)
    case none
}

protocol Coordinator {
    func start(context: Context<Any>)
    func addChild(otherCoordinator: Coordinator)
}
