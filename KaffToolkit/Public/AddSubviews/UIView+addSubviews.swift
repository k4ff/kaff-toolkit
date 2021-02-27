//
//  UIView+addSubviews.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

public extension UIView {
	
	func addSubviews(_ views: [UIView]) {
		views.forEach {
			addSubview($0)
		}
	}
	
}
