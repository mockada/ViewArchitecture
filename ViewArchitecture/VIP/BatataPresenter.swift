//
//  BatataPresenter.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol BatataPresenterProtocol {
    func set(viewController: BatataViewControllerProtocol?)
}

final class BatataPresenter: BatataPresenterProtocol {
    private weak var viewController: BatataViewControllerProtocol?
    
    func set(viewController: BatataViewControllerProtocol?) {
        self.viewController = viewController
    }
}
