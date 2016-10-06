//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    @IBOutlet var animalListTableView: UITableView!
    
    let animals: [String] = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "animalPush" {
            let dest = segue.destination as! AnimalViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            
            //dest.animalEmoji = getEmojiForAnimal(animal: animals[(indexPath?.row)!])
            dest.animalName = animals[(indexPath?.row)!]
            //dest.navHeading = animals[(indexPath?.row)!]
            
            
        }
    }
}
