//
//  ComposedViewInteractorInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import Foundation

public protocol ComposedViewFetchableInteractorInput: AnyObject {
    associatedtype Entity

    var storage: Entity? { get }

    func fetch(force: Bool) async throws
}

public extension ComposedViewFetchableInteractorInput {
    func fetch(force: Bool = false) async throws {
        try await fetch(force: force)
    }
}
