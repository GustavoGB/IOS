//
//  rpsGame.swift
//  GameApp
//
//  Created by Gustavo Gobetti on 2018-10-16.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation

class RpsGame: NSObject {
    
    var turno   : [Turn]?
    var player1 : Player?
    var player2 : Player?
    let numberOfLevels : Int
    let rules :[(Selection,Selection)-> Selection?]
    
    init(levels:Int,player1:Player,player2:Player,rules:[(Selection,Selection)->Selection?]){
        
        self.numberOfLevels = levels
        self.player1 = player1
        self.player2 = player2
        self.rules   = rules
        
    }
    
    
    
    //  var rules : functional type
}
