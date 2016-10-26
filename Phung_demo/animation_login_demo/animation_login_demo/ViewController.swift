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
            changeGradient()

           
        }
    
    func changeGradient() {
        view.backgroundColor = UIColor.clear
        let backgroundLayer = colors.gl
        backgroundLayer.frame = view.frame
        view.layer.insertSublayer(backgroundLayer, at: 0)
    }
}



