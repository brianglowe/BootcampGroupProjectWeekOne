//
//  RootTableViewController.swift
//  BootcampGroupProjectWeekOne
//
//  Created by Brian J Glowe on 10/19/15.
//  Copyright © 2015 Brian Amelia Kate. All rights reserved.
//

import UIKit


class RootTableViewController: UITableViewController {

    let gameOne = Gameplay()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameOne.games()
        
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return gameOne.gameNames.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CelebrityIdentifier", forIndexPath: indexPath)
        cell.textLabel?.text = gameOne.gameNames[indexPath.row]
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath = tableView.indexPathForCell(sender as! UITableViewCell)
        let listVC = segue.destinationViewController as! GameplayViewController
        
            let game = gameOne.gameNames[indexPath!.row]
            let celebName = game
            listVC.celebTweets = gameOne.gameTweets(celebName)
    }
    

    
}


























