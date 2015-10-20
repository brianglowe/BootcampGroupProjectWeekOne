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
    
    let celebrities = ["Kanye","Donald","Ted","Kim K."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var kanye = Celebrity()
        kanye.name = "Kanye"
        kanye.tweets += ["First Tweet", "second Tweet", "third Tweet"]
        var donald = Celebrity()
        donald.name = "Donald"
        donald.tweets += ["I like frogs", "Happy thursday", "Finish the toothpaste", "Put a fork in the outlet"]
        
        gameOne.gameOptions.append(kanye)
        gameOne.gameOptions.append(donald)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return gameOne.gameOptions.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CelebrityIdentifier", forIndexPath: indexPath)
        cell.textLabel?.text = gameOne.gameOptions[indexPath.row].name

        return cell
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


























