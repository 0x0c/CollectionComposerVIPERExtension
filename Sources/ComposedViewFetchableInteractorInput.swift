//
//  ComposedViewInteractorInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import CollectionComposer

public protocol ComposedViewFetchableInteractorInput: AnyObject {
    associatedtype Repository: ComposedViewRepositoryInterface

    var repository: Repository { get }

    func makeSections(for entity: Repository.Entity) -> [any CollectionComposer.Section]
    func reload() async throws
    func fetch(force: Bool) async throws
}

public extension ComposedViewFetchableInteractorInput {
    func reload() async throws {
        try await fetch(force: true)
    }

    func fetch(force: Bool = false) async throws {
        try await fetch(force: force)
    }
}
