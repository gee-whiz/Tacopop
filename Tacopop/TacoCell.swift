//
//  TacoCell.swift
//  Tacopop
//
//  Created by George Kapoya on 2017/01/11.
//  Copyright © 2017 immedia. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {
	@IBOutlet weak var tacoImage: UIImageView!
	@IBOutlet weak var tacoLabel: UILabel!


	var taco: Taco!


	func configureCell(taco: Taco)  {
      self.taco  = taco
		print( taco.proteinId.rawValue)
	  self.tacoImage.image = UIImage(named: taco.proteinId.rawValue)
	  self.tacoLabel.text  = taco.productName

	}


}
