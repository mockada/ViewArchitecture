//
//  BatataPresenterTests.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import XCTest
@testable import ViewArchitecture

final class BatataPresenterTests: XCTestCase {
    private var viewControllerSpy: BatataViewControllerSpy?
    private var sut: BatataPresenter?
    
    override func setUp() {
        super.setUp()
        
        viewControllerSpy = BatataViewControllerSpy()
        
        guard let viewControllerSpy else { return }
        sut = BatataPresenter()
        sut?.set(viewController: viewControllerSpy)
    }
    
    override func tearDown() {
        viewControllerSpy = nil
        sut = nil
        
        super.tearDown()
    }
    
    func testPresentPreparedDish_ShouldShoudPreparedDish() {
        sut?.present(preparedDish: "______")
        
        XCTAssertEqual(viewControllerSpy?.showPreparedDishCallsCount, 1)
        XCTAssertEqual(viewControllerSpy?.showPreparedDishLastReceivedInvocation, "______")
    }
    
    func testPresentLoading_ShouldDisplayLoading() {
        sut?.presentLoading()
        
        XCTAssertEqual(viewControllerSpy?.displayLoadingCallsCount, 1)
    }
    
    func testHideLoading_ShouldHideLoading() {
        sut?.hideLoading()
        
        XCTAssertEqual(viewControllerSpy?.hideLoadingCallsCount, 1)
    }
}
