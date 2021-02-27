//
//  AdaptiveSizeCalculation.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

public extension CGFloat {
	
	/// Make proportional value relative to device width based on selected design reference
	func adaptToWidth() -> CGFloat {
		return (self / designReference.getSize().width) * UIScreen.main.bounds.width
	}
	
	/// Make proportional value relative to device height based on selected design reference
	func adaptToHeight() -> CGFloat {
		return (self / designReference.getSize().height) * UIScreen.main.bounds.height
	}
	
}

public extension Double {
	
	/// Make proportional value relative to device width based on selected design reference
	func adaptToWidth() -> CGFloat {
		return (CGFloat(self) / designReference.getSize().width) * UIScreen.main.bounds.width
	}
	
	/// Make proportional value relative to device height based on selected design reference
	func adaptToHeight() -> CGFloat {
		return (CGFloat(self) / designReference.getSize().height) * UIScreen.main.bounds.height
	}
	
}
