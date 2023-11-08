//
//  ComposedViewInteractorInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import CollectionComposer
import UIKit

public protocol ComposedViewFetchableInteractorInput: AnyObject {
    func reload() async throws
    @discardableResult
    func fetch(force: Bool) async throws -> [CollectionComposer.Section]
}

public extension ComposedViewFetchableInteractorInput {
    func reload() async throws {
        try await fetch(force: true)
    }

    @discardableResult
    func fetch(force: Bool = false) async throws -> [CollectionComposer.Section] {
        return try await fetch(force: force)
    }
}