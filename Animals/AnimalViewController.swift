//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    var animalName: String?
    
    @IBOutlet weak var viewObject: UIView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalEmojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        if let animalName = animalName {
            
            animalNameLabel.text = animalName
            animalEmojiLabel.text = getEmojiForAnimal(animal: animalName)
            navigationItem.title = animalName
        }
        
    }
    
    private func getEmojiForAnimal (animal: String) -> String {
        switch animal.lowercased() {
        case "dog":
            return "🐶"
        case "cat":
            return "🐱"
        case "mouse":
            return "🐭"
        case "hamster":
            return "🐹"
        case "bunny":
            return "🐰"
        case "panda":
            return "🐼"
        case "lion":
            return "🦁"
        case "pig":
            return "🐷"
        case "frog":
            return "🐸"
        case "octopus":
            return "🐙"
        default:
            return "👻"
        }
    }

}
