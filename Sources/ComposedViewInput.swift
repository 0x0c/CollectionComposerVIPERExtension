//
//  ComposedViewInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import CollectionComposer
import UIKit

@MainActor
public protocol ComposedViewInput: AnyObject {
    func update(sections: [any CollectionComposer.Section])
}