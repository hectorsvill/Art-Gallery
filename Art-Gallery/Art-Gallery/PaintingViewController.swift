//
//  PaintingViewController.swift
//  Art-Gallery
//
//  Created by Hector Steven on 4/24/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
		title = "Lambda Gallery"
		galleryTableView.delegate = self
		galleryTableView.dataSource = self
    }
	
    let controller = PaintingController()
	@IBOutlet var galleryTableView: UITableView!
}

extension PaintingViewController: UITableViewDelegate {
}

extension PaintingViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return controller.paintings.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = galleryTableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
		guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
		paintingCell.paitingImageView.image = controller.paintings[indexPath.row].image
		
		return paintingCell
	}
	
	
}
