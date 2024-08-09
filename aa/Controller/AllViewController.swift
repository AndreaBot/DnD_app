//
//  AllViewController.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 22/03/2023.
//

import UIKit
import AVFoundation

class AllViewController: UIViewController {

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var dieImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!

    var audioPlayer = AudioPlayer()
    let vibration = UINotificationFeedbackGenerator()
    
    var selectedDie = DieModel(name: "", range: 0...19)
    var result = 0 {
        didSet {
            vibration.notificationOccurred(.success)
            resultImage.image = UIImage(systemName: "\(result).circle")?
                .withTintColor(.white, renderingMode: .alwaysOriginal)
            
            if result == selectedDie.range.lowerBound {
                present(Alerts.createAlert(title: "Well that sucks...", message: "Better luck next time!", soundFileName: "sad"), animated: true)
                audioPlayer.playSound(fileName: "sad")
                
            } else if result == selectedDie.range.upperBound {
                present(Alerts.createAlert(title: "TOP ROLL!", message: "...you lucky bugger...", soundFileName: "happy"), animated: true)
                audioPlayer.playSound(fileName: "happy")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedDie.name
        dieImage.image = UIImage(named: selectedDie.name)
        rollButton.layer.cornerRadius = 25
    }
    
    
    @IBAction func rollDie(_ sender: UIButton) {
        result = Int.random(in: selectedDie.range)
    }
}
