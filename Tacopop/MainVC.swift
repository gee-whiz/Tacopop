//
//  MainVC.swift
//  Tacopop
//
//  Created by George Kapoya on 2017/01/11.
//  Copyright © 2017 immedia. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, DataServiceDelegate {

	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var headerView: HeaderView!

	var ds: DataService = DataService.instance
    override func viewDidLoad() {
        super.viewDidLoad()
		self.headerView.addDropShadow()
		self.registerCell()
		ds.laodTacoData()

    }


	func tacoDataLoaded() {
		print("data loaded")
		collectionView.reloadData()
	}

	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return ds.tacoArray.count
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as! TacoCell

		let item = ds.tacoArray[indexPath.row]

		cell.configureCell(taco: item)
		return cell
	}



	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 100, height: 132)
	}

	func registerCell() {
	   collectionView.register(UINib(nibName: "TacoCell", bundle: nil), forCellWithReuseIdentifier: "TacoCell")

	}

}
