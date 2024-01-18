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
    var storage: Repository.Entity { get }

    func fetch(force: Bool) async throws
}

public extension ComposedViewFetchableInteractorInput {
    func fetch(force: Bool = false) async throws {
        try await fetch(force: force)
    }
}
