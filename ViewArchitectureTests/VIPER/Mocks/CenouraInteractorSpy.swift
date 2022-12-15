//
//  CenouraInteractorSpy.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import Foundation
@testable import ViewArchitecture

final class CenouraInteractorSpy: CenouraInteractorProtocol {
    private(set) var setPresenterCallsCount: Int = 0
    private(set) var setPresenterLastReceivedInvocation: CenouraPresenterOutputProtocol?
    
    func set(presenter: CenouraPresenterOutputProtocol?) {
        setPresenterCallsCount += 1
        setPresenterLastReceivedInvocation = presenter
    }
    
    private(set) var prepareDishCallsCount: Int = 0
    private(set) var prepareDishLastReceivedInvocation: String?
    
    func prepare(dish: String) {
        prepareDishCallsCount += 1
        prepareDishLastReceivedInvocation = dish
    }
}
