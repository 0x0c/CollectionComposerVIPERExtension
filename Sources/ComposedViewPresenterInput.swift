//
//  ComposedViewPresenterInput.swift
//  
//
//  Created by Akira Matsuda on 2023/11/08.
//

import CollectionComposer
import UIKit

@MainActor
public protocol ComposedViewPresenterInput: AnyObject {
    var sections: [CollectionComposer.Section]? { get }

    func didItemSelect(indexPath: IndexPath)
}
