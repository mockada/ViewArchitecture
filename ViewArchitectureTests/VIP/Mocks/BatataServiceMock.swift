//
//  BatataServiceMock.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import XCTest
@testable import ViewArchitecture

final class BatataServiceMock: BatataServiceProtocol {
    var smashFoodExpectedResult: String?
    
    func smash(food: String, completion: (String) -> Void) {
        guard let smashFoodExpectedResult else {
            XCTFail("Expected result was not defined")
            return
        }
        completion(smashFoodExpectedResult)
    }
}
