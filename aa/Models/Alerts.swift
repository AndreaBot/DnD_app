//
//  Alerts.swift
//  DnD Roll
//
//  Created by Andrea Bottino on 09/08/2024.
//

import UIKit

struct Alerts {
    
    static func createAlert(title: String, message: String, soundFileName: String) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        return alert
    }
}
