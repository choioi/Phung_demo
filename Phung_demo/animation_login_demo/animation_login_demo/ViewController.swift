//
//  ViewController.swift
//  animation_login_demo
//
//  Created by Phung on 10/26/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var bot: NSLayoutConstraint!
    let colors = Colors()
    let underKeyboardLayoutConstraint = UnderKeyboardLayoutConstraint()
    
    
    
        // This constraint ties an element at zero points from the bottom layout guide
        @IBOutlet var keyboardHeightLayoutConstraint: NSLayoutConstraint?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            underKeyboardLayoutConstraint.setup(bot, view: view,
                                                bottomLayoutGuide: bottomLayoutGuide)
            setGradientBackground()
            //or changeGradient()

           
        }
    
    //1
    func changeGradient() {
        view.backgroundColor = UIColor.clear
        let backgroundLayer = colors.gl
        backgroundLayer.frame = view.frame
        view.layer.insertSublayer(backgroundLayer, at: 0)
    }
    //2
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        //self.view.layer.addSublayer(gradientLayer)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}




