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
}
