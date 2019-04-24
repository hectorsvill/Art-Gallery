//
//  Painting.swift
//  Art-Gallery
//
//  Created by Hector Steven on 4/24/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit


struct Painting {
	let image: UIImage
	var isLiked: Bool
	
	init(image: UIImage, isLiked: Bool = false) {
		self.image = image
		self.isLiked = isLiked
	}
}



