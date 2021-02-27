//
//  Notification+KeyboardStuff.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

extension Notification {
	
	var keyboardAnimationDuration: TimeInterval? {
		(userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue
	}
	
	var keyboardRect: CGRect? {
		userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect
	}
	
}
