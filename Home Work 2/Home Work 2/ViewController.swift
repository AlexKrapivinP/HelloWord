//
//  ViewController.swift
//  Home Work 2
//
//  Created by Barsik on 24.05.2024.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

final class ViewController: UIViewController {
    
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignal.alpha = lightIsOff
        yellowSignal.alpha = lightIsOff
        greenSignal.alpha = lightIsOff
    }
    override func viewWillLayoutSubviews() {
        redSignal.layer.cornerRadius = redSignal.frame.width / 2
        yellowSignal.layer.cornerRadius = redSignal.frame.width / 2
        greenSignal.layer.cornerRadius = redSignal.frame.width / 2
    }
    @IBAction func trafficLightSwitchButton(_ sender: Any) {
    
            if startButton.currentTitle == "START" {
                startButton.setTitle("NEXT", for: .normal)
            }
            
            switch currentLight {
            case .red:
                greenSignal.alpha = lightIsOff
                redSignal.alpha = lightIsOn
                currentLight = .yellow
            case .yellow:
                redSignal.alpha = lightIsOff
                yellowSignal.alpha = lightIsOn
                currentLight = .green
            case .green:
                greenSignal.alpha = lightIsOn
                yellowSignal.alpha = lightIsOff
                currentLight = .red
            }
        }
    }
    


