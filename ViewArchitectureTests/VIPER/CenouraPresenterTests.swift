//
//  CenouraPresenterTests.swift
//  ViewArchitectureTests
//
//  Created by Jade Silveira on 15/12/22.
//

import XCTest
@testable import ViewArchitecture

final class CenouraPresenterTests: XCTestCase {
    private var interactorSpy: CenouraInteractorSpy?
    private var viewControllerOutputSpy: CenouraViewControllerOutputSpy?
    private var sut: CenouraPresenter?
    
    override func setUp() {
        super.setUp()
        
        interactorSpy = CenouraInteractorSpy()
        viewControllerOutputSpy = CenouraViewControllerOutputSpy()
        
        guard let interactorSpy else { return }
        sut = CenouraPresenter(interactor: interactorSpy)
        sut?.set(viewController: viewControllerOutputSpy)
    }
    
    override func tearDown() {
        interactorSpy = nil
        viewControllerOutputSpy = nil
        sut = nil
        
        super.tearDown()
    }
    
    func testPrepareDish_ShouldPreparedDish() {
        sut?.prepare(dish: "Cenoura")
        
        XCTAssertEqual(interactorSpy?.prepareDishCallsCount, 1)
        XCTAssertEqual(interactorSpy?.prepareDishLastReceivedInvocation, "Cenoura")
    }
    
    func testPresentPreparedDish_ShouldShowPreparedDish() {
        sut?.present(preparedDish: "C E N O U R A")
        
        XCTAssertEqual(viewControllerOutputSpy?.showPreparedDishCallsCount, 1)
        XCTAssertEqual(viewControllerOutputSpy?.showPreparedDishLastReceivedInvocation, "C E N O U R A")
    }
    
    func testPresentLoading_ShouldDisplayLoading() {
        sut?.presentLoading()
        
        XCTAssertEqual(viewControllerOutputSpy?.displayLoadingCallsCount, 1)
    }
    
    func testHideLoading_ShouldHideLoading() {
        sut?.hideLoading()
        
        XCTAssertEqual(viewControllerOutputSpy?.hideLoadingCallsCount, 1)
    }
}
