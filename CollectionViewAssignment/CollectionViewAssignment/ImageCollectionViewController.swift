//
//  ImageCollectionViewController.swift
//  CollectionViewAssignment
//
//  Created by Derrick Park on 2018-10-29.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ImageCollectionViewController: UICollectionViewController {
	
	@IBOutlet weak var segmentControl: UISegmentedControl!
	let photoFactory = PhotoFactory()
    lazy var subjects = Array(photoFactory.bySubjects.keys)
    lazy var locations = Array(photoFactory.byLocations.keys)
    
	@IBAction func segmentedControllTapped(_ sender: UISegmentedControl) {
		collectionView.reloadData()
	}
	
	@IBAction func pinch(_ sender: UIPinchGestureRecognizer) {
		print(sender.scale)
	}
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	// MARK: UICollectionViewDataSource
	
	override func numberOfSections(in collectionView: UICollectionView) -> Int {
        if segmentControl.selectedSegmentIndex == 0 {
            return photoFactory.bySubjects.count
        } else {
            return photoFactory.byLocations.count
        }
	}
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        if let label = header.viewWithTag(10) as? UILabel {
            if segmentControl.selectedSegmentIndex == 0 {
                label.text = subjects[indexPath.section]
            } else {
                label.text = locations[indexPath.section]
            }
        }
        return header
    }
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		if segmentControl.selectedSegmentIndex == 0 {
			return photoFactory.bySubjects[subjects[section]]!.count
		} else {
			return photoFactory.byLocations[locations[section]]!.count
		}
	}

	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ImageCollectionViewCell
        if segmentControl.selectedSegmentIndex  == 0 {
            let subject = Array(photoFactory.bySubjects.keys)[indexPath.section]
            cell.imageView.image = UIImage(named: photoFactory.bySubjects[subject]![indexPath.item].imageName)
        } else {
            let location = Array(photoFactory.byLocations.keys)[indexPath.section]
            cell.imageView.image = UIImage(named: photoFactory.byLocations[location]![indexPath.item].imageName)
        }
		return cell
	}
}
