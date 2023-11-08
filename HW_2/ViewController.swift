//
//  ViewController.swift
//  HW_2
//
//  Created by Антон Баландин on 3.11.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redRoundView: UIView!
    @IBOutlet var yellowRoundView: UIView!
    @IBOutlet var greenRoundView: UIView!
    
    
    @IBOutlet var changeColorButton: UIButton!
    
    enum Color {
        case red
        case yellow
        case green
    }
    
    var currentColor: Color = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redRoundView.layer.cornerRadius = 45
        yellowRoundView.layer.cornerRadius = 45
        greenRoundView.layer.cornerRadius = 45
        
        redRoundView.alpha = 0.3
        yellowRoundView.alpha = 0.3
        greenRoundView.alpha = 0.3
    }


    @IBAction func changeTrafficColor(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        redRoundView.alpha = 0.3
        yellowRoundView.alpha = 0.3
        greenRoundView.alpha = 0.3
        
        if currentColor == .red {
            redRoundView.alpha = 1
            currentColor = .yellow
        } else if currentColor == .yellow {
            yellowRoundView.alpha = 1
            currentColor = .green
        } else {
            greenRoundView.alpha = 1
            currentColor = .red
        }
    }
}

