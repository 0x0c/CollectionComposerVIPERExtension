//
//  ComposedViewInteractorInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import Foundation

public protocol ComposedViewFetchableInteractorInput: AnyObject {
    associatedtype Repository: ComposedViewRepositoryInterface

    var repository: Repository { get }

    func fetch(force: Bool) async throws -> Repository.Entity
}

public extension ComposedViewFetchableInteractorInput {
    func fetch(force: Bool = false) async throws  -> Repository.Entity {
        return try await fetch(force: force)
    }
}
