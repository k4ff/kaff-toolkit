//
//  KView.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

open class KView: UIView {
	
	/// Layout guide based on keyboard
	public let keyboardLayoutGuide = UILayoutGuide()
	private(set) lazy var keyboardHeightConstraint = keyboardLayoutGuide.heightAnchor.constraint(equalToConstant: 0)
	
	public override static var requiresConstraintBasedLayout: Bool {
		true
	}
	
	public override init(frame: CGRect) {
		super.init(frame: frame)
		configureKeyboardLayoutGuide()
		setViews()
	}
	
	public required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	open func setViews() {}
	open func onViewDidLoad() {}
	open func onViewWillAppear() {}
	open func onViewDidAppear() {}
	open func onViewWillDisappear() {}
	open func onViewDidDisappear() {}
	open func onViewWillLayoutSubviews() {}
	open func onViewDidLayoutSubviews() {}
	
	private func configureKeyboardLayoutGuide() {
		addLayoutGuide(keyboardLayoutGuide)
		NSLayoutConstraint.activate([
			keyboardHeightConstraint,
			keyboardLayoutGuide.bottomAnchor.constraint(equalTo: self.bottomAnchor)
		])
	}
}
