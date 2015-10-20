//
//  AddPlayerViewController.swift
//  BootcampGroupProjectWeekOne
//
//  Created by Amelia Johnston on 10/20/15.
//  Copyright © 2015 Brian Amelia Kate. All rights reserved.
//

import UIKit

class AddPlayerViewController: UIViewController {

    @IBOutlet weak var playerNameInput: UITextField!
    
    var playerName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func addPlayerButton(sender: UIButton) {
        playerName = playerNameInput.text!
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: UIButton?) {
            
            
            // Get the new view controller using segue.destinationViewController.
            // Pass the selected object to the new view controller.
        }
    }

}
