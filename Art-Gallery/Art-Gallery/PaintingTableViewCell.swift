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

//		use delegate here to toogle like
		delegate?.tappedLikeButton(on: self)
		print("tappedLikedBUtton")
		updateLikeButton()
	}
	
	func updateLikeButton() {
		guard let painting = painting else { return }
		likeButton.titleLabel?.text = painting.isLiked ? "Like" : "Unlike"
		paintingImageView.image = painting.image
	}
	
	@IBOutlet var paintingImageView: UIImageView!
	@IBOutlet var likeButton: UIButton!
	
	weak var delegate: PaintingTableViewCellDelegate?
	var location: Int?
	
	var painting: Painting? {
		didSet {
			updateLikeButton()
		}
	}
}
