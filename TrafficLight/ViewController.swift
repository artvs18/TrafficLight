//
//  ViewController.swift
//  TrafficLight
//
//  Created by Artemy Volkov on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var buttonToChangeLight: UIButton!
    
    private var numberOfTaps = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        redLight.layer.cornerRadius = redLight.bounds.width / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.width / 2
        greenLight.layer.cornerRadius = greenLight.bounds.width / 2
        buttonToChangeLight.layer.cornerRadius = 15
    }
    
    @IBAction func buttonDidTapped() {
        buttonToChangeLight.setTitle("NEXT", for: .normal)
        numberOfTaps += 1
        
        switch numberOfTaps {
        case 1:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        case 2:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        default:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            numberOfTaps = 0
        }
    }
}
