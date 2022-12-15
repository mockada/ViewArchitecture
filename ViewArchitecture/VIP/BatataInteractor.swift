//
//  BatataInteractor.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol BatataInteractorProtocol {
    func prepare(dish: String)
}

final class BatataInteractor: BatataInteractorProtocol {
    private let presenter: BatataPresenterProtocol
    private let service: BatataServiceProtocol
    
    init(presenter: BatataPresenterProtocol, service: BatataServiceProtocol) {
        self.presenter = presenter
        self.service = service
    }
    
    func prepare(dish: String) {
        presenter.presentLoading()
        
        service.smash(food: dish) { [presenter] foodSmashed in
            presenter.hideLoading()
            presenter.present(preparedDish: foodSmashed)
        }
    }
}
