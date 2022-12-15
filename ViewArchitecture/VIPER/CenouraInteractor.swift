//
//  CenouraInteractor.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol CenouraInteractorProtocol {
    func set(presenter: CenouraPresenterOutputProtocol?)
    func prepare(dish: String)
}

final class CenouraInteractor: CenouraInteractorProtocol {
    private let service: CenouraServiceProtocol
    private weak var presenter: CenouraPresenterOutputProtocol?
    
    init(service: CenouraServiceProtocol) {
        self.service = service
    }
    
    func set(presenter: CenouraPresenterOutputProtocol?) {
        self.presenter = presenter
    }
    
    func prepare(dish: String) {
        presenter?.presentLoading()
        
        service.cut(food: dish) { [presenter] foodCut in
            presenter?.hideLoading()
            presenter?.present(preparedDish: foodCut)
        }
    }
}
