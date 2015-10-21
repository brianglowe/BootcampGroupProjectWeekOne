//
//  Gameplay.swift
//  BootcampGroupProjectWeekOne
//
//  Created by Brian J Glowe on 10/19/15.
//  Copyright © 2015 Brian Amelia Kate. All rights reserved.
//

import Foundation

class Gameplay {
    var gameNames: [String] = []
    var gameOptions = Celebrity().games
    
    func games() -> [String] {
       var game = [String](gameOptions.keys)
        gameNames = game
    
        return gameNames
    }
    
    
    
    
}
