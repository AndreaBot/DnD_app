//
//  SixViewController.swift
//  Dnd Roll
//
//  Created by Andrea Bottino on 19/02/2023.
//

import UIKit

class SixViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "D6"

       
    }
    

    @IBOutlet weak var rollResult: UIImageView!
    @IBOutlet weak var luckyRes: UIImageView!
    
    let vibration = UINotificationFeedbackGenerator()
    
    
    let results = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "13"), #imageLiteral(resourceName: "14"), #imageLiteral(resourceName: "15"), #imageLiteral(resourceName: "16"), #imageLiteral(resourceName: "17"), #imageLiteral(resourceName: "18"), #imageLiteral(resourceName: "19"), #imageLiteral(resourceName: "20")]
    let luckyResult = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "6")]
    
    
    
    @IBAction func rollDice(_ sender: UIButton) {
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
        sender.alpha = 1
        }
        
        self.vibration.notificationOccurred(.success)
        rollResult.image = results[Int.random(in: 0...5)]
    }
    
    @IBAction func feelingLucky(_ sender: UIButton) {
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
        sender.alpha = 1
        }
        
        self.vibration.notificationOccurred(.success)
        luckyRes.image = luckyResult[Int.random(in: 0...2)]
    }
    
    @IBAction func question(_ sender: Any) {
        let alert = UIAlertController(title: "Feeling lucky?", message: "Pressing this button will only roll the lowest, middle and highest value of the dice.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
}
