//
//  ViewController.swift
//  Calculator
//
//  Created by Jarvis Lam on 7/4/20.
//  Copyright © 2020 Lemon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }

    @IBAction func clearClicked(_ sender: UIButton) {
        numberLabel.text = calculator.clearButtonPressed()
    }
    @IBAction func signClicked(_ sender: UIButton) {
        numberLabel.text = calculator.signButtonClicked(numberLabel.text ?? "0")
    }
    
    @IBAction func percentClicked(_ sender: UIButton) {
        numberLabel.text = calculator.percentButtonClicked(numberLabel.text ?? "0")
    }
    @IBAction func numberClicked(_ sender: UIButton) {
        numberLabel.text = calculator.numberButtonClicked(sender.currentTitle!)
    }
    @IBAction func mathButtonClicked(_ sender: UIButton) {
        numberLabel.text = calculator.mathButtonClicked(sender.currentTitle!)
    }
    @IBAction func equalClicked(_ sender: UIButton) {
        numberLabel.text = calculator.equalButtonPressed()
    }
}

