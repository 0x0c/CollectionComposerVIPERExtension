//
//  ComposedViewFetchablePresenterInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import Combine
import Foundation

@MainActor
public protocol ComposedViewFetchablePresenterInput {
    var isLoadingPublisher: Published<Bool>.Publisher { get }

    func reload()
    func fetch(force: Bool)
}

public extension ComposedViewFetchablePresenterInput {
    func reload() {
        fetch(force: true)
    }

    func fetch(force: Bool = false) {
        fetch(force: force)
    }
}