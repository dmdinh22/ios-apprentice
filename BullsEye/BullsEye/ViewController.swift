//
//  ViewController.swift
//  BullsEye
//
//  Created by David D on 4/20/19.
//  Copyright © 2019 David D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // this outlet stores a reference to the slider as a new instance var
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    var targetValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNewRound()
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)" +
                      "\nThe target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = lroundf(slider.value)
        // uncomment below and comment one line above to reset to middle each new round
//        currentValue = 50
//        slider.value = Float(currentValue)
    }
}

