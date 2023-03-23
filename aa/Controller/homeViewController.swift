//
//  homeViewController.swift
//  aa
//
//  Created by Andrea Bottino on 18/02/2023.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var d4Button: UIButton!
    @IBOutlet weak var d6Button: UIButton!
    @IBOutlet weak var d8Button: UIButton!
    @IBOutlet weak var d10Button: UIButton!
    @IBOutlet weak var d12Button: UIButton!
    @IBOutlet weak var d20Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        d4Button.titleLabel!.layer.opacity = 0.0
        d6Button.titleLabel!.layer.opacity = 0.0
        d8Button.titleLabel!.layer.opacity = 0.0
        d10Button.titleLabel!.layer.opacity = 0.0
        d12Button.titleLabel!.layer.opacity = 0.0
        d20Button.titleLabel!.layer.opacity = 0.0

    }
    
    var image = ""
    
    var diceRange = 0...19
    
    @IBAction func diceIsPressed(_ sender: UIButton) {
        
        if sender.currentTitle == "D4" {
            
            image = "D4"
            diceRange = 0...3
            
        } else if sender.currentTitle == "D6" {
            
            image = "D6"
            diceRange = 0...5
        }
        else if sender.currentTitle == "D8" {
            
            image = "D8"
            diceRange = 0...7
            
        }else if sender.currentTitle == "D10" {
            
            image = "D10"
            diceRange = 0...9
            
        }else if sender.currentTitle == "D12" {
            
            image = "D12"
            diceRange = 0...11
            
        }else if sender.currentTitle == "D20" {
            
            image = "D20"
            diceRange = 0...19
        }
        
        performSegue(withIdentifier: "goToDie", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDie" {
            let destinationVC = segue.destination as? AllViewController
            destinationVC?.image = image
            destinationVC?.diceRange = diceRange
            
        }
    }
}

