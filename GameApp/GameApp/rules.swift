//
//  rules.swift
//  GameApp
//
//  Created by Gustavo Gobetti on 2018-10-17.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation

struct RuleMaker{
    
    let a = Turn.Selection.rock.RawValue + Turn.Selection.paper.rawValue
    enum Combination: Int{
        case rockPaper = 7
        case scissorsPaper = 4
        case scissorsRock = 5
    }
    
    static let rule1{(s1:rSelection,s2:Turn.Selection)->Turn.Selection? in if s1.rawValue + s2.rawValue == Combination.scissorsPaper.rawValue{return .scissors}; return nil}
    
    static let rule2{(s1:Turn.Selection,s2:Selection)->Turn.Selection? in if s1.rawValue + s2.rawValue == Combination.rockPaper.rawValue{return .paper} ; return nil}
    
    static let rule3{(s1:Turn.Selection,s2:Selection)->Turn.Selection? in if s1.rawValue + s2.rawValue == Combination.scissorsRock.rawValue{return .rock};return nil}
    
    static let gameOverRule = { (totalNumberOfTurne:Int, turnsList:[Turn]?)) -> Bool
        in
        if let t = turnsList
        {
            if t.count == totalNumberOfPlannedTurns{
                return true
            }
        }
        return false
        }
    
    static let winnerDeterminationRule = {(player1: Player, player2: Player,totalNumberOfTurns:Int, turnsList:[Turn]?, isGameOver:(Int,[Turn]?)->Bool)
        -> Turn.OutCome? in
        
        if isGameOver(totalNumberOfTurns,turnsList)
        {
        
            let result = Utilies.intEqualityPredicate(player1.numberOfWin,player2.numberOfWin)
            
            switch result
            {
                case 1: return Turn.OutCome.player1Win
                case 2: return Turn.OutCome.player2Win
            default:
                return Turn.OutCome.tie
            }
        }
        return nil;
            
    }

   static func winnerSelectionRulesSupplier()->[(Turn.Selection,Turn.Selection)->Turn.Selection?]{
        
        let rulesArray = [RuleMaker.rule1,RuleMaker.rule2,RuleMaker.rule3]
        
        return rulesArray
    }
    
    
}
