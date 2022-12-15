//
//  BatataFactory.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

import UIKit

enum BatataFactory {
    static func make() -> UIViewController {
        let presenter: BatataPresenterProtocol = BatataPresenter()
        let interactor: BatataInteractorProtocol = BatataInteractor(presenter: presenter)
        let viewController: BatataViewController = .init(interactor: interactor)
        
        presenter.set(viewController: viewController)
        
        return viewController
    }
}
