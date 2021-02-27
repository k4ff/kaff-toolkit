//
//  KViewController.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

open class KViewController<V: KView>: UIViewController {
	
	/// Tell keyboardLayoutGuide on KView's subclass to listen on keyboard appearing event. Default value is false.
	public var automaticallyAdjustKeyboardLayoutGuide = false {
		willSet {
			newValue ? startObservingKeyboardNotifications() : stopObservingKeyboardNotifications()
		}
	}
	
	public var onKeyboardWillAppear: ((Notification) -> Void)?
	public var onKeyboardWillDisappear: ((Notification) -> Void)?
	
	private var keyboardNotifications: [Notification.Name] {
		[
			UIResponder.keyboardWillHideNotification,
			UIResponder.keyboardWillShowNotification,
			UIResponder.keyboardWillChangeFrameNotification
		]
	}
	
	/// Instance to access corresponding KView's subclass that's used as main view
	public var screenView: V {
		return view as? V ?? V()
	}
	
	deinit {
		stopObservingKeyboardNotifications()
	}
	
	open override func loadView() {
		view = V()
	}
	
	open override func viewDidLoad() {
		super.viewDidLoad()
		screenView.onViewDidLoad()
	}
	
	open override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		screenView.onViewWillAppear()
	}
	
	open override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		screenView.onViewDidAppear()
	}
	
	open override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		screenView.onViewWillDisappear()
	}
	
	open override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		screenView.onViewDidDisappear()
	}
	
	open override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		screenView.onViewWillLayoutSubviews()
	}
	
	open override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		screenView.onViewDidLayoutSubviews()
	}
	
}

private extension KViewController {
	
	func startObservingKeyboardNotifications() {
		keyboardNotifications.forEach { registerForNotification(name: $0) }
	}
	
	func stopObservingKeyboardNotifications() {
		keyboardNotifications.forEach { NotificationCenter.default.removeObserver(self, name: $0, object: nil) }
	}
	
	func registerForNotification(name: Notification.Name) {
		NotificationCenter.default.addObserver(forName: name, object: nil, queue: nil, using: handleNotification(name: name))
	}
	
	func handleNotification(name: Notification.Name) -> (Notification) -> Void {
		{ [weak self] notification in
			guard let self = self, self.automaticallyAdjustKeyboardLayoutGuide, var offset = notification.keyboardRect?.height else {
				return
			}
			
			switch name {
			case UIResponder.keyboardWillHideNotification:
				offset = 0
				self.onKeyboardWillDisappear?(notification)
			case UIResponder.keyboardWillShowNotification:
				self.onKeyboardWillAppear?(notification)
			default:
				break
			}
			
			let animationDuration = notification.keyboardAnimationDuration ?? 0.25
			self.screenView.keyboardHeightConstraint.constant = offset
			UIView.animate(withDuration: animationDuration) {
				self.screenView.layoutIfNeeded()
			}
		}
	}
	
}
