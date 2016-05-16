//
//  WelcomeViewController.swift
//  ViewsandStoryBoard2
//
//  Created by Habib Miranda on 5/16/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let nombre = name else {
            welcomeLabel.text = "What's your party name, bro?"
            return
        }
        welcomeLabel.text = "Welcome to the party \(nombre)!"
        
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

}
