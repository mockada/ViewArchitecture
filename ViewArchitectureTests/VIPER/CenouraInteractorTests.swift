//
//  CenouraInteractorTests.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import XCTest
@testable import ViewArchitecture

final class CenouraInteractorTests: XCTestCase {
    private var presenterOutputSpy: CenouraPresenterOutputSpy?
    private var serviceMock: CenouraServiceMock?
    private var sut: CenouraInteractor?
    
    override func setUp() {
        super.setUp()
        
        presenterOutputSpy = CenouraPresenterOutputSpy()
        serviceMock = CenouraServiceMock()
        
        guard let serviceMock else { return }
        sut = CenouraInteractor(service: serviceMock)
        sut?.set(presenter: presenterOutputSpy)
    }
    
    override func tearDown() {
        presenterOutputSpy = nil
        serviceMock = nil
        sut = nil
        
        super.tearDown()
    }
    
    func testPrepareDish_ShouldCutFood() {
        serviceMock?.cutFoodExpectedResult = "C E N O U R A"
        
        sut?.prepare(dish: "Cenoura")
        
        XCTAssertEqual(presenterOutputSpy?.presentLoadingCallsCount, 1)
        XCTAssertEqual(presenterOutputSpy?.hideLoadingCallsCount, 1)
        XCTAssertEqual(presenterOutputSpy?.presentPreparedDishCallsCount, 1)
        XCTAssertEqual(presenterOutputSpy?.presentPreparedDishLastReceivedInvocation, "C E N O U R A")
    }
}
