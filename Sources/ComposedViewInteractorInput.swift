//
//  ComposedViewInteractorInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import CollectionComposer
import UIKit

public protocol ComposedViewInteractorInput: AnyObject {
    var sections: [CollectionComposer.Section]? { get set }
}
