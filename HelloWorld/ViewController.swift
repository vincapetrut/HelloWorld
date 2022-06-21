//
//  ViewController.swift
//  HelloWorld
//
//  Created by Petruț Vinca on 08.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    var availableColours = [UIColor]()
    var randomColour: UIColor!
    var previouslyColour: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        availableColours += [.systemYellow, .systemOrange, .systemCyan, .systemGreen, .systemPink, .systemRed, .systemBlue, .systemPurple]
        
        welcomeLabel.text = "Hello World!"
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        repeat {
            randomColour = availableColours.randomElement()
        } while randomColour == previouslyColour
        
        previouslyColour = randomColour
                    
        welcomeLabel.textColor = randomColour
    }
}
