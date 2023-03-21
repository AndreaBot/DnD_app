//
//  fourViewController.swift
//  aa
//
//  Created by Andrea Bottino on 19/02/2023.
//

import UIKit

class fourViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "D4"
    }
    
    @IBOutlet weak var luckyres: UIImageView!
    
    
    @IBOutlet weak var rollResult: UIImageView!
    
    let results = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "13"), #imageLiteral(resourceName: "14"), #imageLiteral(resourceName: "15"), #imageLiteral(resourceName: "16"), #imageLiteral(resourceName: "17"), #imageLiteral(resourceName: "18"), #imageLiteral(resourceName: "19"), #imageLiteral(resourceName: "20")]
    
    let vibration = UINotificationFeedbackGenerator()
    
    @IBAction func rollDice(_ sender: UIButton) {
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
        sender.alpha = 1
        }
        
        self.vibration.notificationOccurred(.success)
        
        rollResult.image = results[Int.random(in: 0...3)]
        
    }
    
}
