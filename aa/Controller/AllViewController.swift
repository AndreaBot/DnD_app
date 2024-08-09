//
//  AllViewController.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 22/03/2023.
//

import UIKit
import AVFoundation

class AllViewController: UIViewController {
    
    var dndMaster = DndMaster(audioPlayer: AudioPlayer())

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var dieImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!

    
    var selectedDie = DieModel(name: "", range: 0...19)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedDie.name
        dieImage.image = UIImage(named: selectedDie.name)
        rollButton.layer.cornerRadius = 25
    }
    
    
    @IBAction func rollDie(_ sender: UIButton) {
        dndMaster.roll(vc: self, imageView: resultImage, diceRange: selectedDie.range)
    }
}
