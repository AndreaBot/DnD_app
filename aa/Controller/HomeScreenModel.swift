//
//  HomeScreenModel.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 09/08/2024.
//

import UIKit

struct HomeScreenModel {
    
    var selectedDie = DieModel(name: "", range: 0...19)
    
    mutating func selectDie(tag: Int) {
        switch tag {
            
        case 0:
            selectedDie.name = "D4"
            selectedDie.range = 1...4;
            
        case 1:
            selectedDie.name = "D6"
            selectedDie.range = 1...6;
            
        case 2:
            selectedDie.name = "D8"
            selectedDie.range = 1...8;
            
        case 3:
            selectedDie.name = "D10"
            selectedDie.range = 1...10;
            
        case 4:
            selectedDie.name = "D12"
            selectedDie.range = 1...12;
            
        case 5:
            selectedDie.name = "D20"
            selectedDie.range = 1...20;
            
        default:
            selectedDie.name = "D20"
            selectedDie.range = 1...20
        }
    }
    
    func setupButtons(buttons: [UIButton]) {
        for i in buttons.indices {
            buttons[i].titleLabel!.layer.opacity = 0.0
            buttons[i].tag = i
        }
    }
}
