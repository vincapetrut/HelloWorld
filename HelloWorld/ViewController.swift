//
//  ViewController.swift
//  HelloWorld
//
//  Created by Petruț Vinca on 08.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello World!")
        
        label.text = "Hello World!"
    }
}
