//
//  turn.swift
//  GameApp
//
//  Created by Gustavo Gobetti on 2018-10-16.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation

class Turn: NSObject {
    
    enum OutCome{
        case player1Win
        case player2Win
        case tie
    }
    enum Selection{
        case rock
        case paper
        case scissor
    }
    var player1 :Selection?
    var player2 :Selection?
    var result: OutCome?
    
    init(result:OutCome, player1: Selection, player2: Selection){
        
        self.result = result
        self.player1 = player1
        self.player2 = player2
    }
    
}
