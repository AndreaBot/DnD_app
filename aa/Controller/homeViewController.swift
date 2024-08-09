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
    
    var selectedDie = DieModel(name: "", range: 0...19)
    
    @IBAction func diceIsPressed(_ sender: UIButton) {

        if sender.currentTitle == "D4" {
            
            selectedDie.name = "D4"
            selectedDie.range = 1...4
            
        } else if sender.currentTitle == "D6" {
            
            selectedDie.name = "D6"
            selectedDie.range = 1...6
        } else if sender.currentTitle == "D8" {
            
            selectedDie.name = "D8"
            selectedDie.range = 1...8
            
        } else if sender.currentTitle == "D10" {
            
            selectedDie.name = "D10"
            selectedDie.range = 1...10
            
        } else if sender.currentTitle == "D12" {
            
            selectedDie.name = "D12"
            selectedDie.range = 1...12
            
        } else if sender.currentTitle == "D20" {
            
            selectedDie.name = "D20"
            selectedDie.range = 1...20
        }
        
        performSegue(withIdentifier: "goToDie", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDie" {
            if let destinationVC = segue.destination as? AllViewController {
                destinationVC.selectedDie = selectedDie
            }
        }
    }
}

