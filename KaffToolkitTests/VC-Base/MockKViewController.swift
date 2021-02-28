//
//  MockKViewController.swift
//  KaffToolkitTests
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit
@testable import KaffToolkit

class MockKViewController: KViewController<MockKView> {
	var loadViewIsCalled = false
	var viewDidLoadIsCalled = false
	var viewWillAppearIsCalled = false
	var viewDidAppearIsCalled = false
	var viewWillDisappearIsCalled = false
	var viewDidDisappearIsCalled = false
	var viewWillLayoutSubviewsIsCalled = false
	var viewDidLayoutSubviewsIsCalled = false
	
	override func loadView() {
		super.loadView()
		loadViewIsCalled = true
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewDidLoadIsCalled = true
		automaticallyAdjustKeyboardLayoutGuide = false
		automaticallyAdjustKeyboardLayoutGuide = true
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		viewWillAppearIsCalled = true
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		viewDidAppearIsCalled = true
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		viewWillDisappearIsCalled = true
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		viewDidDisappearIsCalled = true
	}
	
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		viewWillLayoutSubviewsIsCalled = true
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		viewDidLayoutSubviewsIsCalled = true
	}
}
