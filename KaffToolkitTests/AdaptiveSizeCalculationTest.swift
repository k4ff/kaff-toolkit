//
//  AdaptiveSizeCalculationTest.swift
//  KaffToolkitTests
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import XCTest
@testable import KaffToolkit

class AdaptiveSizeCalculationTest: XCTestCase {

	func testAdaptToWidthCGFloat8() {
		designReference = .iPhone8
		XCTAssertEqual(CGFloat(375.0).adaptToWidth(), UIScreen.main.bounds.width)
	}
	
	func testAdaptToHeightCGFloat8() {
		designReference = .iPhone8
		XCTAssertEqual(CGFloat(667.0).adaptToHeight(), UIScreen.main.bounds.height)
	}
	
	func testAdaptToWidthCGFloat11() {
		designReference = .iPhone11
		XCTAssertEqual(CGFloat(414.0).adaptToWidth(), UIScreen.main.bounds.width)
	}
	
	func testAdaptToHeightCGFloat11() {
		designReference = .iPhone11
		XCTAssertEqual(CGFloat(896.0).adaptToHeight(), UIScreen.main.bounds.height)
	}
	
	func testAdaptToWidthDouble8() {
		designReference = .iPhone8
		XCTAssertEqual((375.0).adaptToWidth(), UIScreen.main.bounds.width)
	}
	
	func testAdaptToHeightDouble8() {
		designReference = .iPhone8
		XCTAssertEqual((667.0).adaptToHeight(), UIScreen.main.bounds.height)
	}
	
	func testAdaptToWidthDouble11() {
		designReference = .iPhone11
		XCTAssertEqual((414.0).adaptToWidth(), UIScreen.main.bounds.width)
	}
	
	func testAdaptToHeightDouble11() {
		designReference = .iPhone11
		XCTAssertEqual((896.0).adaptToHeight(), UIScreen.main.bounds.height)
	}

}
