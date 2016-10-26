//
//  Gradient.swift
//  animation_login_demo
//
//  Created by Phung on 10/26/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import Foundation
import UIKit

class Colors {
    
    let colorTop = UIColor(red: 192.0/255.0, green: 38.0/255.0, blue: 42.0/255.0, alpha: 1.0).cgColor
    let colorBottom = UIColor(red: 35.0/255.0, green: 2.0/255.0, blue: 2.0/255.0, alpha: 1.0).cgColor
    
    let gl: CAGradientLayer
    
    init() {
        gl = CAGradientLayer()
        gl.colors = [ colorTop, colorBottom]
        gl.locations = [ 0.0, 1.0]
    }
}

