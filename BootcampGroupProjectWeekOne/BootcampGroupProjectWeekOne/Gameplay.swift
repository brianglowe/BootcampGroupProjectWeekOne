//
//  Gameplay.swift
//  BootcampGroupProjectWeekOne
//
//  Created by Brian J Glowe on 10/19/15.
//  Copyright © 2015 Brian Amelia Kate. All rights reserved.
//

import Foundation

class Gameplay {
    var gameOptions = Celebrity().games
    var gameNames: [String] = []
    
    func games() -> [String] {
        gameNames = [String](gameOptions.keys)

        return gameNames
    }
    
    func gameTweets(celebName: String) -> [String] {
        var tweets: [String] = []
        if let chosenGame = gameOptions[celebName] {
            for tweet in chosenGame {
                print("tweet \(tweet)")
                tweets.append(tweet)
            }
        }
        return tweets
    }
    
    
}
