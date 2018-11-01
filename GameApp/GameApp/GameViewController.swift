//
//  GameViewController.swift
//  GameApp
//
//  Created by Gustavo Gobetti on 2018-10-15.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var firstRockButton: UIButton!
    
    
    @IBAction func firstRockDidTapped(_ sender: UIButton) {
        
        
    }
    @IBAction func firstPaperDidTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func firstScissorDidTapped(_ sender: UIButton) {
    }
    
    @IBOutlet weak var firstPaperButton: UIButton!
    @IBOutlet weak var firstScissorButton: UIButton!
    @IBOutlet weak var firstPlayerSocreLabel: UILabel!
    @IBOutlet weak var secondPlayerScoreLabel: UILabel!
    @IBOutlet weak var secondRockButton: UIButton!
    @IBOutlet weak var secondPaperButton: UIButton!
    @IBOutlet weak var secondScissorButton: UIButton!
    
    @IBAction func secondRockDidTapped(_ sender: UIButton) {
    }
    
    @IBAction func secondPaperDidTapped(_ sender: UIButton) {
    }
    
    @IBAction func secondScissorDidTapped(_ sender: UIButton) {
    }
    
    
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
