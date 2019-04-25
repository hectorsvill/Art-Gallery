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
//		self.likeButton.titleLabel?.text = "one"
//		use delegate here to toogle like
		delegate?.tappedLikeButton(on: self)
	}
	
	@IBOutlet var paitingImageView: UIImageView!
	@IBOutlet var likeButton: UIButton!
	
	weak var delegate: PaintingTableViewCellDelegate?
	var painting: Painting?
}
