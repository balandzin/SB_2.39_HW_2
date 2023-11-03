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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redRoundView.layer.cornerRadius = 50
        yellowRoundView.layer.cornerRadius = 50
        greenRoundView.layer.cornerRadius = 50
        
       
    }


    @IBAction func changeTrafficColor(_ sender: UIButton) {
        changeColorButton.setTitle("NEXT", for: .normal)
    
    }
    
}

