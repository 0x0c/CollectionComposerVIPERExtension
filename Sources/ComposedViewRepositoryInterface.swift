//
//  ComposedViewRepositoryInterface.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

public protocol ComposedViewRepositoryInterface {
    associatedtype Entity

    func fetch(force: Bool) async throws -> Entity
}
