//
//  UIView+addSubviews.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

public extension UIView {
	
	/// Add some subviews all at once instead of adding one by one with native method
	func addSubviews(_ views: [UIView]) {
		views.forEach {
			addSubview($0)
		}
	}
	
}
