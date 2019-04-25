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
		delegate?.tappedLikeButton(on: self)
		updateLikeButton()
	}
	
	private func updateLikeButton() {
		guard let painting = painting else { return }
		let like = painting.isLiked ? "Like" : "Unlike"
		likeButton.setTitle(like, for: .normal)
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
