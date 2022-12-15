//
//  BatataPresenter.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol BatataPresenterProtocol {
    func set(viewController: BatataViewControllerProtocol?)
    func present(preparedDish: String)
    func presentLoading()
    func hideLoading()
}

final class BatataPresenter: BatataPresenterProtocol {
    private weak var viewController: BatataViewControllerProtocol?
    
    func set(viewController: BatataViewControllerProtocol?) {
        self.viewController = viewController
    }
    
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
