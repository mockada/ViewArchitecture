//
//  CenouraPresenter.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol CenouraPresenterInputProtocol {
    func set(viewController: CenouraViewControllerOutputProtocol?)
    func prepare(dish: String)
}

protocol CenouraPresenterOutputProtocol: AnyObject {
    func present(preparedDish: String)
    func presentLoading()
    func hideLoading()
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
    
    func prepare(dish: String) {
        interactor.prepare(dish: dish)
    }
}

extension CenouraPresenter: CenouraPresenterOutputProtocol {
    func present(preparedDish: String) {
        viewController?.show(preparedDish: preparedDish)
    }
    
    func presentLoading() {
        viewController?.displayLoading()
    }
    
    func hideLoading() {
        viewController?.hideLoading()
    }
}
