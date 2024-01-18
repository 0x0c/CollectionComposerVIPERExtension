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
    var sections: [any CollectionComposer.Section] { get }

    func needsUpdateSections()
    func didSelectItem(_ item: AnyHashable, in section: any Section, at indexPath: IndexPath)
}
