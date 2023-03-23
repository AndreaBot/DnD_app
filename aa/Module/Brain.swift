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
    
    let results = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "13"), #imageLiteral(resourceName: "14"), #imageLiteral(resourceName: "15"), #imageLiteral(resourceName: "16"), #imageLiteral(resourceName: "17"), #imageLiteral(resourceName: "18"), #imageLiteral(resourceName: "19"), #imageLiteral(resourceName: "20")]
    
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
    
    func genRandom(useRange: ClosedRange<Int>) -> UIImage {
        let randomRes = results[Int.random(in: useRange)]
        return randomRes
    }
}
