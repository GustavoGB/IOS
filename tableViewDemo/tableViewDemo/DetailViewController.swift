//
//  DetailViewController.swift
//  tableViewDemo
//
//  Created by Gustavo Gobetti on 2018-10-09.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var studentName: UILabel!{
        didSet{
            studentName.text = nameString
        }
    }
    @IBOutlet weak var country: UILabel!{
        didSet{
            country.text = positionString
        }
    }
    
    
    var nameString : String!
    var positionString : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
