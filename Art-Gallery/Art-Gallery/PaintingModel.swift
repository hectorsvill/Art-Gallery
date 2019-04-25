//
//  PaintingModel.swift
//  Art-Gallery
//
//  Created by Hector Steven on 4/24/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class PaintingModel: NSObject{
	
	
}

extension PaintingModel: UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		
		weak var tableView: UITableView?
		return 0
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
//		PaintingController(cell: cell, index: indexPath.row)
		return cell
	}
	
}

extension PaintingModel: PaintingTableViewCellDelegate {
	func tappedLikeButton(on cell: PaintingTableViewCell){
		cell.painting?.isLiked.toggle()
	}
}

