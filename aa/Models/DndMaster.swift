//
//  Brain.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 22/03/2023.
//

import UIKit

struct DndMaster {
    
    let vibration = UINotificationFeedbackGenerator()
    var audioPlayer: AudioPlayer
    
    mutating func roll(vc: UIViewController, imageView: UIImageView, diceRange: ClosedRange<Int>) {
        vibration.notificationOccurred(.success)
        
        let result = Int.random(in: diceRange)
        imageView.image = UIImage(systemName: "\(result).circle")?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
        
        if result == diceRange.lowerBound {
            vc.present(Alerts.createAlert(title: "Well that sucks...", message: "Better luck next time!", soundFileName: "sad"), animated: true)
            audioPlayer.playSound(fileName: "sad")
            
        } else if result == diceRange.upperBound {
            vc.present(Alerts.createAlert(title: "TOP ROLL!", message: "...you lucky bugger...", soundFileName: "happy"), animated: true)
            audioPlayer.playSound(fileName: "happy")
        }
    }
}
