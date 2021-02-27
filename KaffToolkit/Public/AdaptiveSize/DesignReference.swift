//
//  DesignReference.swift
//  KaffToolkit
//
//  Created by Ricki Bin Yamin on 27/02/21.
//

import UIKit

public enum DesignReference {
	/// Design based on 375x667 screen size
	case iPhone8
	
	/// Design based on 414x896 screen size
	case iPhone11
	
	func getSize() -> CGSize {
		switch self {
		case .iPhone8:
			return CGSize(width: 375.0, height: 667.0)
		case .iPhone11:
			return CGSize(width: 414.0, height: 896.0)
		}
	}
}

public var designReference: DesignReference = .iPhone8
