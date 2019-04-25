//
//  PaintingTableViewCell.swift
//  Art-Gallery
//
//  Created by Hector Steven on 4/24/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

	//var painting: Painting?
	
	
	@IBOutlet var paitingImageView: UIImageView!
	
	
	@IBAction func likeButtonPressed(_ sender: Any) {
		print("Like it/ Unlike it")
	
	}
}
