//
//  ViewController.swift
//  Phung_demo
//
//  Created by Phung on 10/24/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit
import Pulsator

class ViewController: UIViewController {
    
    let pulsator = Pulsator()
    
    @IBOutlet weak var imagePhone: UIImageView!
    
    
    @IBOutlet weak var byr: UIButton!
    override func viewDidLoad() {
        @IBAction func aaaa(_ sender: UIButton) {
        }
        super.viewDidLoad()
        
        //config Circle
        configPulsator()
        
        //add circle to image
        imagePhone.layer.superlayer?.insertSublayer(pulsator, below: imagePhone.layer)
        
        //Start running cirle
        pulsator.start()
        
    }
    
    func configPulsator(){
        
        //Number of circle
        pulsator.numPulse = 10
        
        //Size of circle
        pulsator.radius = 150.0
        
        //Duration of animation of each cirle
        pulsator.animationDuration = 5
        
        //Color of circle
        pulsator.backgroundColor = UIColor(
            red: CGFloat(0.0),
            green: CGFloat(0.4),
            blue: CGFloat(0.7),
            alpha: CGFloat(1.0)).cgColor
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //config layer
        imagePhone.layer.layoutIfNeeded()
        //config position of Circle
        pulsator.position = imagePhone.layer.position
    }
    
    
    
}

@IBAction func click1(_ sender: AnyObject) {
}
