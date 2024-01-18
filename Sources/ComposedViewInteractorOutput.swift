//
//  ComposedViewInteractorOutput.swift
//  
//
//  Created by Akira Matsuda on 2024/01/18.
//

import CollectionComposer

@MainActor
public protocol ComposedViewInteractorOutput: AnyObject {
    func needsUpdateSections()
}
