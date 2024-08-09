//
//  homeViewController.swift
//  aa
//
//  Created by Andrea Bottino on 18/02/2023.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet var allButtons: [UIButton]!
    
    var homeScreenModel = HomeScreenModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        homeScreenModel.setupButtons(buttons: allButtons)
    }

    @IBAction func diceIsPressed(_ sender: UIButton) {

        homeScreenModel.selectDie(tag: sender.tag)
        performSegue(withIdentifier: "goToDie", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDie" {
            if let destinationVC = segue.destination as? AllViewController {
                destinationVC.selectedDie = homeScreenModel.selectedDie
            }
        }
    }
}

