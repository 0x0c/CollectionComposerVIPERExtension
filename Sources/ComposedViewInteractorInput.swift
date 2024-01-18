//
//  ComposedViewInteractorInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import Foundation

public protocol ComposedViewInteractorInput: AnyObject {
    func needsUpdateSections()
}