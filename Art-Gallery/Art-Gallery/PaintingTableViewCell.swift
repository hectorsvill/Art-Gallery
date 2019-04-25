//
//  PaintingTableViewCell.swift
//  Art-Gallery
//
//  Created by Hector Steven on 4/24/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
	
	
	@IBAction func tappedLikedButton(_ sender: Any) {
		print("like")
	}
	
	@IBOutlet var paitingImageView: UIImageView!
	@IBOutlet var likeButton: UIButton!
	
	weak var delegate: PaintingTableViewCellDelegate?
	
}
