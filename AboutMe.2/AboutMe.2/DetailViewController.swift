//
//  DetailViewController.swift
//  AboutMe.2
//
//  Created by Habib Miranda on 5/16/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailTextBox: UITextView!

    var descText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let detail = descText else {
            detailTextBox.text = "No information on this yet!"
            return
        }
        detailTextBox.text = detail

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

}
