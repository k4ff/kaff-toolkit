//
//  MockKView.swift
//  KaffToolkitTests
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit
@testable import KaffToolkit

class MockKView: KView {
	
	var setViewIsCalled = false
	var onViewDidLoadIsCalled = false
	var onViewWillAppearIsCalled = false
	var onViewDidAppearIsCalled = false
	var onViewWillDisappearIsCalled = false
	var onViewDidDisappearIsCalled = false
	var onViewWillLayoutSubviewsIsCalled = false
	var onViewDidLayoutSubviewsIsCalled = false
	
	override func setViews() {
		super.setViews()
		setViewIsCalled = true
	}
	
	override func onViewDidLoad() {
		super.onViewDidLoad()
		onViewDidLoadIsCalled = true
	}
	
	override func onViewWillAppear() {
		super.onViewWillAppear()
		onViewWillAppearIsCalled = true
	}
	
	override func onViewDidAppear() {
		super.onViewDidAppear()
		onViewDidAppearIsCalled = true
	}
	
	override func onViewWillDisappear() {
		super.onViewWillDisappear()
		onViewWillDisappearIsCalled = true
	}
	
	override func onViewDidDisappear() {
		super.onViewDidDisappear()
		onViewDidDisappearIsCalled = true
	}
	
	override func onViewWillLayoutSubviews() {
		super.onViewWillLayoutSubviews()
		onViewWillLayoutSubviewsIsCalled = true
	}
	
	override func onViewDidLayoutSubviews() {
		super.onViewDidLayoutSubviews()
		onViewDidLayoutSubviewsIsCalled = true
	}
	
}
