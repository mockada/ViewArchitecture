//
//  CenouraPresenter.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol CenouraPresenterInputProtocol {
    func set(viewController: CenouraViewControllerOutputProtocol?)
}

protocol CenouraPresenterOutputProtocol: AnyObject {
    
}

final class CenouraPresenter {
    private let interactor: CenouraInteractorProtocol
    private weak var viewController: CenouraViewControllerOutputProtocol?
    
    init(interactor: CenouraInteractorProtocol) {
        self.interactor = interactor
    }
}

extension CenouraPresenter: CenouraPresenterInputProtocol {
    func set(viewController: CenouraViewControllerOutputProtocol?) {
        self.viewController = viewController
    }
}

extension CenouraPresenter: CenouraPresenterOutputProtocol {
    
}
