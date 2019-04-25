//
//  DetailViewController.swift
//  Art-Gallery
//
//  Created by Hector Steven on 4/24/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
		setPainting()
    }

	private func setPainting() {
		guard let p = painting else { return }
		paintingImageView?.image = p.image
	}
    
	@IBOutlet var paintingImageView: UIImageView!
	
	var painting: Painting? {
		didSet {
			setPainting()
		}
	}
}
