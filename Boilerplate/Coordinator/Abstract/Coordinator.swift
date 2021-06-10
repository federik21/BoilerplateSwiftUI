//
//  Coordinator.swift
//  Boilerplate
//
//  Created by Piccirilli Federico on 09/06/21.
//

import Foundation
import SwiftUI

enum Context<T> {
    case some(T)
    case error(Error)
    case none
}

protocol Coordinator {
    associatedtype V: View
    func start(context: Context<Any>) -> V
}

extension Coordinator {
    func addChild<T: Coordinator>(_ coordinator: T, with context: Context<Any>) -> some View {
        return coordinator.start(context: context)
    }
}
