//
//  homeViewController.swift
//  aa
//
//  Created by Andrea Bottino on 18/02/2023.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet var allButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        setupButtons()

    }
    
    var selectedDie = DieModel(name: "", range: 0...19)
    
    @IBAction func diceIsPressed(_ sender: UIButton) {
        switch sender.tag {
            
        case 0:
            selectedDie.name = "D4"
            selectedDie.range = 1...4;
            
        case 1:
            selectedDie.name = "D6"
            selectedDie.range = 1...6;
            
        case 2:
            selectedDie.name = "D8"
            selectedDie.range = 1...8;
            
        case 3:
            selectedDie.name = "D10"
            selectedDie.range = 1...10;
            
        case 4:
            selectedDie.name = "D12"
            selectedDie.range = 1...12;
            
        case 5:
            selectedDie.name = "D20"
            selectedDie.range = 1...20;
            
        default:
            selectedDie.name = "D20"
            selectedDie.range = 1...20
        }
        
        performSegue(withIdentifier: "goToDie", sender: self)
    
    }
    
    func setupButtons() {
        for i in allButtons.indices {
            allButtons[i].titleLabel!.layer.opacity = 0.0
            allButtons[i].tag = i
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDie" {
            if let destinationVC = segue.destination as? AllViewController {
                destinationVC.selectedDie = selectedDie
            }
        }
    }
}

