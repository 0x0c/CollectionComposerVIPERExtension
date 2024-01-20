//
//  ComposedViewFetchablePresenterInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import Foundation

@MainActor
public protocol ComposedViewFetchablePresenterInput {
    func fetch(force: Bool)
}

public extension ComposedViewFetchablePresenterInput {
    func fetch(force: Bool = false) {
        fetch(force: force)
    }
}