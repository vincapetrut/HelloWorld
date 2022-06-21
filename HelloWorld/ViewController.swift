//
//  ViewController.swift
//  HelloWorld
//
//  Created by Petruț Vinca on 08.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    var availableColors = [UIColor]()
    var randomColor: UIColor!
    var previouslyColor: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        availableColors += [.systemYellow, .systemOrange, .systemCyan, .systemGreen, .systemPink, .systemRed, .systemBlue, .systemPurple]
        
        welcomeLabel.text = "Hello World!"
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        repeat {
            randomColor = availableColors.randomElement()
        } while randomColor == previouslyColor
        
        previouslyColor = randomColor
                    
        welcomeLabel.textColor = randomColor
    }
}
