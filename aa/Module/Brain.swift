//
//  Brain.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 22/03/2023.
//

import Foundation
import UIKit
import AVFoundation


struct DndMaster {
    
    var player: AVAudioPlayer!
    
    mutating func playSoundHappy() {
        let url = Bundle.main.url(forResource: "happy", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    mutating func playSoundSad() {
        let url = Bundle.main.url(forResource: "sad", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
