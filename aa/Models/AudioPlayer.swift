//
//  AudioPlayer.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 09/08/2024.
//

import Foundation
import AVFoundation

struct AudioPlayer {
    
    var player = AVAudioPlayer()
    
    mutating func playSound(fileName: String) {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "wav") {
            player = try! AVAudioPlayer(contentsOf: url)
            player.play()
        }
    }
}
