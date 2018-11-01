//
//  ViewController.swift
//  tabBarDemo
//
//  Created by Gustavo Gobetti on 2018-10-04.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let butt   = UIButton(frame: CGRect(x: view.bounds.width / 2 - 50 , y: view.bounds.width/2 - 25, width: 100, height: 50))
        
        butt.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        view.addSubview(butt)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

