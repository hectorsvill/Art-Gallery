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
		navigationController?.navigationBar.prefersLargeTitles = true
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
		let painting = controller.paintings[indexPath.row]

		paintingCell.painting = painting
		paintingCell.location = indexPath.row
		paintingCell.delegate = self
		
		return paintingCell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let p = controller.paintings[indexPath.row]
		print(p.isLiked)
	}
	
}

extension PaintingViewController: PaintingTableViewCellDelegate {
	func tappedLikeButton(on cell: PaintingTableViewCell) {
		if let location = cell.location {
			controller.paintings[location].isLiked.toggle()
			galleryTableView.reloadData()
		}
	}
}
