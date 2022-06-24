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
    var availableSizes = [CGFloat]()
    var randomSize: CGFloat!
    var previouslySize: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Hello World"
        
        availableColors += [.systemYellow, .systemOrange, .systemCyan, .systemGreen, .systemPink, .systemRed, .systemBlue, .systemPurple]
        availableSizes += [10, 20, 30, 40, 50, 60, 70, 80]
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        repeat {
            randomColor = availableColors.randomElement()
            randomSize = availableSizes.randomElement()
        } while (randomColor == previouslyColor) && (randomSize == previouslySize)
        previouslyColor = randomColor
        previouslySize = randomSize
                    
        welcomeLabel.textColor = randomColor
        welcomeLabel.font = welcomeLabel.font?.withSize(randomSize)
    }
}
