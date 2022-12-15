//
//  CenouraPresenterOutputSpy.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import Foundation
@testable import ViewArchitecture

final class CenouraPresenterOutputSpy: CenouraPresenterOutputProtocol {
    private(set) var setViewControllerCallsCount: Int = 0
    private(set) var setViewControllerLastReceivedInvocation: CenouraViewControllerOutputProtocol?
    
    func set(viewController: CenouraViewControllerOutputProtocol?) {
        setViewControllerCallsCount += 1
        setViewControllerLastReceivedInvocation = viewController
    }
    
    private(set) var presentPreparedDishCallsCount: Int = 0
    private(set) var presentPreparedDishLastReceivedInvocation: String?
    
    func present(preparedDish: String) {
        presentPreparedDishCallsCount += 1
        presentPreparedDishLastReceivedInvocation = preparedDish
    }
    
    private(set) var presentLoadingCallsCount: Int = 0
    
    func presentLoading() {
        presentLoadingCallsCount += 1
    }
    
    private(set) var hideLoadingCallsCount: Int = 0
    
    func hideLoading() {
        hideLoadingCallsCount += 1
    }
}
