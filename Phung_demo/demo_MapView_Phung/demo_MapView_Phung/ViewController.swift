//
//  ViewController.swift
//  demo_MapView_Phung
//
//  Created by Phung on 10/24/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let shapeLayer = CAShapeLayer()
    
    let bezierPath = UIBezierPath()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        drawPath()
        addDrawtoView()
        animationCar()
        

        
    }
    
    func animationCar(){
        
        
        
        let square = UIView()
        
        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        
        square.backgroundColor = UIColor.red
        view.addSubview(square)
        
        // create a new CAKeyframeAnimation that animates the objects position
        
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        // set the animations path to our bezier curve
        
        anim.path = bezierPath.cgPath
        
        anim.rotationMode = kCAAnimationRotateAuto
        
        anim.repeatCount = Float.infinity
        
        anim.duration = 9
        
        // we add the animation to the squares 'layer' property
        
        square.layer.add(anim, forKey: "animate position along path")
        
        
    }

    
    func drawPath(){
        bezierPath.move(to: CGPoint(
            x: view.frame.size.width/2,
            y: 0.0))
        
        bezierPath.addLine(to: CGPoint(
            x: view.frame.size.width/2,
            y: view.frame.size.height))
        
        UIColor.black.setStroke()
        
        bezierPath.lineWidth = 1
        bezierPath.close()
        bezierPath.stroke()
    }
    
    func addDrawtoView(){
        shapeLayer.path = bezierPath.cgPath
        
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 1.0
        
        view.layer.addSublayer(shapeLayer)
    }


}


