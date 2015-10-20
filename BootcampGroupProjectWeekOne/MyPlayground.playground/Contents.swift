//: Playground - noun: a place where people can play

import UIKit


struct Celebrity {
    var name: String = ""
    var tweets: [String] = []
}

class gameOptions {
    var gameBoard: [Celebrity] = []
    
    func addCelebrity(newName: String) {
        var newCeleb = Celebrity()
        newCeleb.name = newName
        gameBoard += [newCeleb]
    }
}

var kanye = Celebrity