//
//  CenouraServiceMock.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import XCTest
@testable import ViewArchitecture

final class CenouraServiceMock: CenouraServiceProtocol {
    var cutFoodExpectedResult: String?
    
    func cut(food: String, completion: (String) -> Void) {
        guard let cutFoodExpectedResult else {
            XCTFail("Expected result was not defined")
            return
        }
        completion(cutFoodExpectedResult)
    }
}
