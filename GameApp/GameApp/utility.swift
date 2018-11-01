//
//  utility.swift
//  GameApp
//
//  Created by Gustavo Gobetti on 2018-10-17.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation

struct Utilies {
    
    public static let intEqualityPredicate :(Int,Int)->Int = {
        
        if $0==$1{return 0}
        else if $0>$1{return 1}
        else { return 2}
    }
    
}
