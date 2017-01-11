//
//  Taco.swift
//  Tacopop
//
//  Created by George Kapoya on 2017/01/11.
//  Copyright © 2017 immedia. All rights reserved.
//

import Foundation




enum TacoShell: Int {
	case Flour = 1
	case Corn  = 2
}

enum TacoProtein: String {
	case Beef = "Beef"
	case Chicken = "Chicken"
	case Brisket = "Brisket"
	case Fish = "Fish"
}

enum TacoCondiment: Int {
	case  Loaded  = 1
	case Plain  = 2
}



struct Taco {
	private  var _id: Int!
	private  var _productName: String!
	private  var _shellId:  TacoShell!
	private  var _proteinId:  TacoProtein!
	private  var  _condimentId: TacoCondiment!

	var id: Int {
		return  _id
	}

	var productName: String {
		return _productName
	}

	var shellId: TacoShell {
		return  _shellId
	}

	var proteinId: TacoProtein {
		return _proteinId
	}


	var  condimentId: TacoCondiment {
		return _condimentId
	}



	init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
		 _id = id
		 _productName = productName
		//Taco Shell
		switch shellId {
		case 2:
			_shellId = TacoShell.Corn
		default:
			_shellId = TacoShell.Flour
		}

		switch proteinId {
		case 2:
			_proteinId  = TacoProtein.Chicken
		case 3:
			_proteinId  = TacoProtein.Fish
		case 4:
			_proteinId  = TacoProtein.Beef
		default:
			_proteinId = TacoProtein.Brisket
		}

		switch condimentId {
		case 2:
			_condimentId = TacoCondiment.Loaded
		default:
			_condimentId  = TacoCondiment.Plain
		}



	}
}
