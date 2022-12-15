//
//  BatataInteractor.swift
//  ViewArchitecture
//
//  Created by Jade Silveira on 15/12/22.
//

protocol BatataInteractorProtocol {
    
}

final class BatataInteractor: BatataInteractorProtocol {
    private let presenter: BatataPresenterProtocol
    
    init(presenter: BatataPresenterProtocol) {
        self.presenter = presenter
    }
}
