//
//  GameplayViewController.swift
//  BootcampGroupProjectWeekOne
//
//  Created by Brian J Glowe on 10/19/15.
//  Copyright © 2015 Brian Amelia Kate. All rights reserved.
//

import UIKit

class GameplayViewController: UIViewController {

    @IBOutlet weak var tweetTextField: UITextView!
    
    var celebTweets: [String] = [] // coming from selection on first View
    let fakeTweets = ["Give me the boots", "Lets make beer", "Pizza pizza", "Im the greatest in the world", "Adriene", "Victory!"]
    
    var gameTweets: [String] = []
    var tweet: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        startGame()
        tweetTextField.text = tweet
        
        
        print("View did load the tweets brought from root VC = \(gameTweets statu)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createTweetArrayForGame() -> [String] {
        gameTweets = celebTweets + fakeTweets
        print("\(gameTweets)")
        return gameTweets
    }
    
    func randomTweet () -> String {
        let unsignedArrayCount = UInt32(gameTweets.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        tweet = gameTweets[randomNumber]
        print("the chosen tweet = \(tweet)")
        return tweet
    }
    
    func scorePlay(tweet: String) -> Bool {
        if celebTweets.contains(tweet) {
            print("true")
            return true
        }
        
        print("false")
        return false
    }

    func startGame() {
        createTweetArrayForGame()
        randomTweet()
        scorePlay(tweet)
        
    }

    
    @IBAction func answerButton(sender: AnyObject) {
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}




