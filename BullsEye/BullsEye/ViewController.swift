//
//  ViewController.swift
//  BullsEye
//
//  Created by Gustavo Gobetti on 2018-10-13.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(){
        let alert = UIAlertController(title :"Que fome do krl",                   message:"Cade os lanche?",               preferredStyle: .alert)
        
        let action = UIAlertAction(title:"Vai dormir tu já comeu", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated:true, completion: nil)
        
    }
    

}

