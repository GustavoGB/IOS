//
//  player.swift
//  GameApp
//
//  Created by Gustavo Gobetti on 2018-10-16.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation

class Player: NSObject{
    
    var numberOfWin : Int = 0
    var status : GameToolStatus?
    var name :String
    init(name: String){
        self.name =  name
    }
}
