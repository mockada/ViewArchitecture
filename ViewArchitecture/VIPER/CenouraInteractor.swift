//
//  CenouraInteractor.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol CenouraInteractorProtocol {
    func set(presenter: CenouraPresenterOutputProtocol?)
}

final class CenouraInteractor: CenouraInteractorProtocol {
    private weak var presenter: CenouraPresenterOutputProtocol?
    
    func set(presenter: CenouraPresenterOutputProtocol?) {
        self.presenter = presenter
    }
}
