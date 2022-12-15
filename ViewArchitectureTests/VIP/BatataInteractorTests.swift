//
//  BatataInteractorTests.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import XCTest
@testable import ViewArchitecture

final class BatataInteractorTests: XCTestCase {
    private var presenterSpy: BatataPresenterSpy?
    private var serviceMock: BatataServiceMock?
    private var sut: BatataInteractor?
    
    override func setUp() {
        super.setUp()
        
        presenterSpy = BatataPresenterSpy()
        serviceMock = BatataServiceMock()
        
        guard let presenterSpy, let serviceMock else { return }
        sut = BatataInteractor(presenter: presenterSpy, service: serviceMock)
    }
    
    override func tearDown() {
        presenterSpy = nil
        serviceMock = nil
        sut = nil
        
        super.tearDown()
    }
    
    func testPrepareDish_ShouldSmashFood() {
        serviceMock?.smashFoodExpectedResult = "______"
        
        sut?.prepare(dish: "Batata")
        
        XCTAssertEqual(presenterSpy?.presentLoadingCallsCount, 1)
        XCTAssertEqual(presenterSpy?.hideLoadingCallsCount, 1)
        XCTAssertEqual(presenterSpy?.presentPreparedDishCallsCount, 1)
        XCTAssertEqual(presenterSpy?.presentPreparedDishLastReceivedInvocation, "______")
    }
}
