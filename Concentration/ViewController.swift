 //
//  ViewController.swift
//  Concentration
//
//  Created by olegsugatov on 18.03.2021.
//

import UIKit

class ViewController: UIViewController {

    
    var touches = 0 {
        // observer for touches
        didSet {
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipButton(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.003045597579, green: 0.478431046, blue: 0.9985103011, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    let emojiCollection = ["🦊","🐰","🦊","🐰" ]
    
    @IBOutlet var btnCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func btnAction(_ sender: UIButton) {
        touches += 1
        // Optional Binding
        if let buttonIndex = btnCollection.firstIndex(of: sender) {
            flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }
}
