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
    private let lightON:CGFloat = 1.0
    private let lightOFF:CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonToChangeLight.layer.cornerRadius = 15
        
        redLight.alpha = lightOFF
        yellowLight.alpha = lightOFF
        greenLight.alpha = lightOFF
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func buttonDidTapped() {
        if buttonToChangeLight.currentTitle == "START" {
            buttonToChangeLight.setTitle("NEXT", for: .normal)
        }
        
        numberOfTaps += 1
        
        switch numberOfTaps {
        case 1:
            redLight.alpha = lightON
            yellowLight.alpha = lightOFF
            greenLight.alpha = lightOFF
        case 2:
            redLight.alpha = lightOFF
            yellowLight.alpha = lightON
            greenLight.alpha = lightOFF
        default:
            redLight.alpha = lightOFF
            yellowLight.alpha = lightOFF
            greenLight.alpha = lightON
            numberOfTaps = 0
        }
    }
}
