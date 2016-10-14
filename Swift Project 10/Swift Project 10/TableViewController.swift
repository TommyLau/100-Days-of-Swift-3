//
//  TableViewController.swift
//  Swift Project 10
//
//  Created by Tommy Lau on 14/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayList = [String]()
    let arrayBefore = ["Milk", "Apples", "Ham", "Eggs"]
    let arrayAfter = ["Fish", "Carrots", "Milk", "Apples", "Ham", "Eggs", "Bread", "Chicken", "Water"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        // Set view title
        self.title = "Groceries"
        
        // Set left button as "Edit", right button as "Add"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    
        // Create a UIRefreshControl if needed
        if self.refreshControl == nil {
            self.refreshControl = UIRefreshControl()
        }

        // Attach the refresh control to table view
        self.refreshControl!.addTarget(self, action: #selector(TableViewController.handleRefresh(refreshControl:)), for: .valueChanged)
        
        // Initialize array
        arrayList = arrayBefore
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = arrayList[indexPath.row]
        cell.accessoryType = .disclosureIndicator

        return cell
    }
    
    func handleRefresh(refreshControl: UIRefreshControl) {
        // Use new array
        arrayList = arrayAfter

        // A second delay for demo effect
        let when = DispatchTime.now() + 1

        DispatchQueue.main.asyncAfter(deadline: when) {
            // Refresh table view
            self.tableView.reloadData()
            
            // End refreshing in a dummy two seconds delay for demo effect
            refreshControl.endRefreshing()
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
