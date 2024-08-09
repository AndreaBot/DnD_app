//
//  homeViewController.swift
//  aa
//
//  Created by Andrea Bottino on 18/02/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var allButtons: [UIButton]!
    
    var homeScreenModel = HomeScreenModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        setupButtons(buttons: allButtons)
    }

    @IBAction func diceIsPressed(_ sender: UIButton) {
        homeScreenModel.selectDie(tag: sender.tag)
        performSegue(withIdentifier: "goToDie", sender: self)
    
    }
    
    func setupButtons(buttons: [UIButton]) {
        for i in buttons.indices {
            buttons[i].titleLabel!.layer.opacity = 0.0
            buttons[i].tag = i
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDie" {
            if let destinationVC = segue.destination as? AllViewController {
                destinationVC.selectedDie = homeScreenModel.selectedDie
            }
        }
    }
}

