//
//  PartyViewController.swift
//  ViewsandStoryBoard2
//
//  Created by Habib Miranda on 5/16/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class PartyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: -Action Buttons
    
    @IBAction func buttonTouchedDown(sender: AnyObject) {
        self.view.backgroundColor = UIColor.cyanColor()
    }
    
    @IBAction func buttonTouchUpInside(sender: AnyObject) {
        self.view.backgroundColor = UIColor.redColor()
    }
    
    @IBAction func buttonTouchDraggedOutside(sender: AnyObject) {
        self.view.backgroundColor = UIColor.brownColor()
    }
    
    @IBAction func buttonTouchDragExit(sender: AnyObject) {
        self.view.backgroundColor = UIColor.purpleColor()
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toWelcomeSegue" { //Identify the segue (or path) to destination.
            let welcomeViewController = segue.destinationViewController as? WelcomeViewController //Where are we going?
            let name = nameTextField.text ?? "" // what are we bringing with us? if nothing then give us ""(nothing).
            welcomeViewController?.name = name //did we take it?
            
        } else if segue.identifier == "toNewViewSegue1" {
            
            let colorViewController = segue.destinationViewController as? ColorViewController
            let color = UIColor.cyanColor()
            colorViewController?.color = color
            
        } else if segue.identifier == "toNewColorController" {
            
            let colorViewController = segue.destinationViewController as? ColorViewController
            let color = UIColor.orangeColor()
            colorViewController?.color = color
            
            
        } else if segue.identifier == "toNewViewSegue3" {
            
            let colorViewController = segue.destinationViewController as? ColorViewController
            let color = UIColor.purpleColor()
            colorViewController?.color = color
            
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
