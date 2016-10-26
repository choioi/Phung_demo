//
//  ViewController.swift
//  animation_login_demo
//
//  Created by Phung on 10/26/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit






@IBDesignable
class ViewController: UIViewController,UITextFieldDelegate {
    
        
    @IBOutlet weak var buttonCheapgo: UIButton!
    
    @IBOutlet weak var buttonGmail: UIButton!
    @IBOutlet weak var buttonFacebook: UIButton!
    @IBOutlet weak var bot: NSLayoutConstraint!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    
    
    
    
    
    let colors = Colors()
    let underKeyboardLayoutConstraint = UnderKeyboardLayoutConstraint()
    
    let gradientLayer = CAGradientLayer()
    

    
    // This constraint ties an element at zero points from the bottom layout guide
        @IBOutlet var keyboardHeightLayoutConstraint: NSLayoutConstraint?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            //Khai bao delegate cho textfield
            
            txtName.delegate = self
            txtPass.delegate = self
            underKeyboardLayoutConstraint.setup(bot,
                                                view: view,
                                                bottomLayoutGuide: bottomLayoutGuide)
            //setGradientBackground()
            //or
            changeGradient()

           
        }
    
    //1 Change Gradient type 1
    func changeGradient() {
        view.backgroundColor = UIColor.clear
        let backgroundLayer = colors.gl
        backgroundLayer.frame = view.frame
        view.layer.insertSublayer(backgroundLayer, at: 0)
    }
    
    
    //2 Change Gradient type 2
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        
        
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        //self.view.layer.addSublayer(gradientLayer)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    //return to hide keyboard
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        txtName.resignFirstResponder()
        txtPass.resignFirstResponder()
        buttonGmail.isHidden = false
        buttonFacebook.isHidden = false
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        buttonGmail.isHidden = true
        buttonFacebook.isHidden = true
        return true

    }
    
    //fix rotate not lost gradient
    override func willAnimateRotation(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        self.view.layer.sublayers?.first?.frame = self.view.bounds
        
    }

    
    
    
}




