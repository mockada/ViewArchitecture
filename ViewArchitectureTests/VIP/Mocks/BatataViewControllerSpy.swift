//
//  BatataViewControllerSpy.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import Foundation
@testable import ViewArchitecture

final class BatataViewControllerSpy: BatataViewControllerProtocol {
    private(set) var showPreparedDishCallsCount: Int = 0
    private(set) var showPreparedDishLastReceivedInvocation: String?
    
    func show(preparedDish: String) {
        showPreparedDishCallsCount += 1
        showPreparedDishLastReceivedInvocation = preparedDish
    }
    
    private(set) var displayLoadingCallsCount: Int = 0
    
    func displayLoading() {
        displayLoadingCallsCount += 1
    }
    
    private(set) var hideLoadingCallsCount: Int = 0
    
    func hideLoading() {
        hideLoadingCallsCount += 1
    }
}
