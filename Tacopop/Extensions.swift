//
//  Extensions.swift
//  Tacopop
//
//  Created by George Kapoya on 2017/01/11.
//  Copyright © 2017 immedia. All rights reserved.
//

import UIKit



extension  DropShadow where Self: UIView {
	func addDropShadow()  {
		layer.shadowColor = UIColor.black.cgColor
		layer.shadowOpacity = 0.7
		layer.shadowOffset = CGSize.zero
		layer.shadowRadius = 5
	}



}
