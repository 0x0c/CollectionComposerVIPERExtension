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

    func storeSections(_ sections: [any CollectionComposer.Section])
    func didSelectItem(_ item: AnyHashable, in section: any Section)
}
