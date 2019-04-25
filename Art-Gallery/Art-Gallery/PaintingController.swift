//
//  PaintingController.swift
//  Art-Gallery
//
//  Created by Hector Steven on 4/24/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class PaintingController {
	init() {
		for i in 1...12 {
			guard let image = UIImage(named: "Image\(i)") else { return }
			let p = Painting(image: image)
			paintings.append(p)
		}
	}
	var paintings: [Painting] = []
}
