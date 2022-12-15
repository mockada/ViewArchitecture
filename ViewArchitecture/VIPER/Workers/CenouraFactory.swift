//
//  CenouraFactory.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

import UIKit

enum CenouraFactory {
    static func make() -> UIViewController {
        let interactor: CenouraInteractorProtocol = CenouraInteractor()
        let presenter: CenouraPresenterInputProtocol = CenouraPresenter(interactor: interactor)
        let viewController: CenouraViewController = .init(presenter: presenter)
        
        presenter.set(viewController: viewController)
        
        return viewController
    }
}
