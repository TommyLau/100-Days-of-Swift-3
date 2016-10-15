//
//  TableViewController.swift
//  Swift Project 14
//
//  Created by Tommy Lau on 15/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let movieList: [(String, [String])] = [
    ("A", ["Aladdin", "Aliens", "American History X", "Anchorman: The Legend of Ron Burgundy", "A World Without Thieves"]),
    ("B", ["Basic Instinct", "Batman Begins", "Beauty and The Beast", "The Beach", "Big Trouble in Little China"]),
    ("C", ["Catch Me If You Can", "Cloudy with a Chance of Meatballs", "The Crow"]),
    ("D", ["The Departed", "Dredd", "Dr. Strangelove", "Dumb & Dumber"]),
    ("E", ["Enter The Dragon", "Equilibrium", "Escape from New York", "Event Horizon"]),
    ("F", ["Fight Club", "Finding Nemo", "First Blood", "Full Metal Jacket"]),
    ("G", ["Gladiator", "The Godfather", "Good Will Hunting", "Goodfellas", "The Goonies"]),
    ("H", ["Harry Potter", "Hercules", "Hero", "Horton Hears A Who", "How to Train Your Dragon"]),
    ("I", ["Ice Age", "Inception", "The Incredibles", "Indiana Jones", "Iron Man"]),
    ("J", ["Jaws", "Jumanji", "Jurassic Park"]),
    ("K", ["Kill Bill", "King Kong", "Knocked Up", "Kung Fu Hustle"]),
    ("L", ["The Land Before Time", "The Lego Movie", "The Lord of the Rings", "Lost in Space"]),
    ("M", ["The Mask", "The Matrix", "Men in Black", "Minority Report", "Mission Impossible", "Monsters, Inc."]),
    ("N", ["Napoleon Dynamite", "National Treasure", "Night of the Museum"]),
    ("O", ["Office Space", "Old Boy", "Old School", "Over the Hedge"]),
    ("P", ["The Pacifier", "Pan's Labyrinth", "Pinocchio", "Pride & Prejudice", "Public Enemies"]),
    ("Q", ["Quarantine", "Quick Gun Murugun", "A Quiet Little Marriage"]),
    ("R", ["Ratatouille", "Red Eye", "Resident Evil", "Rocky", "Rush Hour"]),
    ("S", ["Schindler's List", "Se7en", "The Shawshank Redemption", "Sherlock Holmes", "Shrek", "Silent Hill", "Sin City"]),
    ("T", ["Terminator", "Texas Chainsaw Massacre", "Titanic", "Toy Story", "Transformers", "The Truman Show"]),
    ("U", ["Undercover Brother", "Underworld", "Up In the Air"]),
    ("V", ["V for Vendetta", "Vanilla Sky", "Venus Boyz"]),
    ("W", ["Wall-E", "Wanted", "The Wild", "Willy Wonka and the Chocolate Factory", "The Wizard of Oz"]),
    ("X", ["The X-Files: Fight the Future", "X-Men", "xXx"]),
    ("Y", ["You Got Served", "You've Got Mail", "You Only Live Twice", "Young Frankenstein"]),
    ("Z", ["Zombieland", "Zookeeper", "Zoolander", "Zorro"])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.title = "Movies"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return movieList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let (_, movieSection) = movieList[section]
        return movieSection.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let (_, movieSection) = movieList[indexPath.section]
        cell.textLabel?.text = movieSection[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return movieList[section].0
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return movieList.map { $0.0 }
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
