//
//  AllViewController.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 22/03/2023.
//

import UIKit
import AVFoundation

class AllViewController: UIViewController {
    
    var newDie = DndMaster()
    
    var player: AVAudioPlayer!
    let vibration = UINotificationFeedbackGenerator()
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var dieImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    var image = ""
    var diceRange = 0...19

    func goodOutcome() {
        let victory = UIAlertController(title: "TOP ROLL!", message: "...you lucky bugger...", preferredStyle: .alert)
        victory.addAction(UIAlertAction(title: "OK", style: .default))
        present(victory, animated: true)
        
        newDie.playSoundHappy()
    }
    
    func badOutcome() {
        let loss = UIAlertController(title: "Well that sucks...", message: "Better luck next time!", preferredStyle: .alert)
        loss.addAction(UIAlertAction(title: "OK", style: .default))
        present(loss, animated: true)
        
        newDie.playSoundSad()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = image
        dieImage.image = UIImage(named: image)
        rollButton.layer.cornerRadius = 25
    }
    
    
    @IBAction func rollDie(_ sender: UIButton) {
        
        vibration.notificationOccurred(.success)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            sender.alpha = 1.0
            
            resultImage.image = newDie.genRandom(useRange: diceRange)
            
            if resultImage.image == newDie.results[0] {
                badOutcome()
            } else if resultImage.image == newDie.results[diceRange.last!] {
                goodOutcome()
            }
        }
    }
}
