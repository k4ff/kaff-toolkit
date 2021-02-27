//
//  VC-BaseTest.swift
//  KaffToolkitTests
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import XCTest

class VC_BaseTest: XCTestCase {
	
	var navigationController: UINavigationController!
	var viewController: MockKViewController!
	
	override func setUp() {
		navigationController = UINavigationController(rootViewController: UIViewController())
		viewController = MockKViewController()
		
		let window = UIWindow(frame: UIScreen.main.bounds)
		window.rootViewController = navigationController
		window.makeKeyAndVisible()
		
		navigationController.pushViewController(viewController, animated: false)
	}
	
	override func tearDown() {
		viewController = nil
		navigationController = nil
	}

	func testLoadView() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			XCTAssertTrue(self.viewController.loadViewIsCalled)
			XCTAssertTrue(self.viewController.screenView.setViewIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}
	
	func testViewDidLoad() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			XCTAssertTrue(self.viewController.viewDidLoadIsCalled)
			XCTAssertTrue(self.viewController.screenView.onViewDidLoadIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}
	
	func testViewWillAppear() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			XCTAssertTrue(self.viewController.viewWillAppearIsCalled)
			XCTAssertTrue(self.viewController.screenView.onViewWillAppearIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}
	
	func testViewDidAppear() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			XCTAssertTrue(self.viewController.viewDidAppearIsCalled)
			XCTAssertTrue(self.viewController.screenView.onViewDidAppearIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}
	
	func testViewWillDisappear() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			self.navigationController.popViewController(animated: false)
		}
		
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
			XCTAssertTrue(self.viewController.viewWillDisappearIsCalled)
			XCTAssertTrue(self.viewController.screenView.onViewWillDisappearIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}
	
	func testViewDidDisappear() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			self.navigationController.popViewController(animated: false)
		}
		
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
			XCTAssertTrue(self.viewController.viewDidDisappearIsCalled)
			XCTAssertTrue(self.viewController.screenView.onViewDidDisappearIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}
	
	func testViewWillLayoutSubview() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			XCTAssertTrue(self.viewController.viewWillLayoutSubviewsIsCalled)
			XCTAssertTrue(self.viewController.screenView.onViewWillLayoutSubviewsIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}
	
	func testViewDidLayoutSubview() {
		let expectation = XCTestExpectation()
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			XCTAssertTrue(self.viewController.viewDidLayoutSubviewsIsCalled)
			XCTAssertTrue(self.viewController.screenView.onViewDidLayoutSubviewsIsCalled)
			expectation.fulfill()
		}
		
		wait(for: [expectation], timeout: 1)
	}

}
