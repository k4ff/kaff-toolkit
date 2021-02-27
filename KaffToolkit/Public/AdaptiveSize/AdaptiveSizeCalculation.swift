//
//  AdaptiveSizeCalculation.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

public extension CGFloat {
	
	func adaptToWidth() -> CGFloat {
		return (self / designReference.getSize().width) * UIScreen.main.bounds.width
	}
	
	func adaptToHeight() -> CGFloat {
		return (self / designReference.getSize().height) * UIScreen.main.bounds.height
	}
	
}

public extension Double {
	
	func adaptToWidth() -> CGFloat {
		return (CGFloat(self) / designReference.getSize().width) * UIScreen.main.bounds.width
	}
	
	func adaptToHeight() -> CGFloat {
		return (CGFloat(self) / designReference.getSize().height) * UIScreen.main.bounds.height
	}
	
}
