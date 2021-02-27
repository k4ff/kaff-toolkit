//
//  AddSubviewsTest.swift
//  KaffToolkitTests
//
//  Created by Ricki Bin Yamin on 28/02/21.
//

import XCTest

class AddSubviewsTest: XCTestCase {
	
	func testAddSubviews() {
		let view = UIView()
		view.addSubviews([UIView(), UIView(), UIView()])
		
		XCTAssertEqual(view.subviews.count, 3)
	}
}
