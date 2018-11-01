//
//  DetailViewController.swift
//  Assignment9
//
//  Created by Derrick Park on 2018-10-10.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	@IBOutlet weak var detailDescriptionLabel: UILabel!


	func configureView() {
		// Update the user interface for the detail item.
		if let detail = detailItem {
		    if let label = detailDescriptionLabel {
		        label.text = detail.description
		    }
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		configureView()
	}

	var detailItem: NSDate? {
		didSet {
		    // Update the view.
		    configureView()
		}
	}


}

