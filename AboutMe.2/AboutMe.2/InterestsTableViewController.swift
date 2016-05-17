//
//  InterestsTableViewController.swift
//  AboutMe.2
//
//  Created by Habib Miranda on 5/16/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class InterestsTableViewController: UITableViewController {
        
    let interests = ["Family", "Travel", "Food", "Music", "Books", "Sports", "Art", "Adventure", "Quirky Things", "Learning"]
    let descArray = ["I love my familly. Have a wife, a little boy, another boy or girl on the way!", "Recently had an awesome vacation in Mazatlan, Mexico!", "Favorite food is New York Style Pizza!", "I like all kinds of music, especially anything live!", "Favorite books are the Harry Potter series. It's leviooooosa, not leviosaaaa!", "Played highschool baseball. Batter up!", "Interested in all of the arts. Can appreciate every style!", "Not an adrenalin junkie, but always up for an adventure!", "My name is Habib, but I'm from Mexico", "Always seeking to learn, no matter what the subject!"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: -Actions:
    
    

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return interests.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("interestCell", forIndexPath: indexPath)
        cell.textLabel?.text = interests[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath)
        print(indexPath.row)
        print(interests[indexPath.row])
    }
    
    
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetailViewSegue" {
            let detailVC = segue.destinationViewController as? DetailViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                let description = descArray[indexPath.row]
                detailVC?.descText = description
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

    }
    

}
