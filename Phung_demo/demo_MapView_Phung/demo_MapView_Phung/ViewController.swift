//
//  ViewController.swift
//  demo_MapView_Phung
//
//  Created by Phung on 10/24/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let color = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 0.00)
    
    let shapeLayer = CAShapeLayer()
    
    let bezierPath = UIBezierPath()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //drawPath()
        
        drawTim()
        
        addDrawtoView()
        
        animationCar()
      
    }
    
    func animationCar(){
        
        
        
        let square = UIView()
        
        //let angel:CGFloat = -90;
        
        let image = UIImage(named: "car-outline-front-view")
        
        let imageView = UIImageView(image: image)
        
        imageView.frame =  CGRect(x: view.frame.size.width/2, y: 0, width: 20, height: 20)
        
        imageView.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        //imageView.transform = CGAffineTransform(rotationAngle: angel);
        
        view.addSubview(imageView)
        
        //square.addSubview(imageView)
        
        //square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        
        //square.backgroundColor = UIColor.red
        
        
        view.addSubview(square)
        
        // create a new CAKeyframeAnimation that animates the objects position
        
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        // set the animations path to our bezier curve
        
        anim.path = bezierPath.cgPath
        
        UIView.animate(withDuration: 1) { () -> Void in
            anim.rotationMode = kCAAnimationRotateAuto
            // CATransform3DIdentity gia tri mac dinh khi show cua CELL
        }

        anim.rotationMode = kCAAnimationRotateAuto
        
        //anim.rotationMode = kCAAnimationDiscrete
        
        
        
        anim.repeatCount = Float.infinity
        
        anim.duration = 30
        
        // we add the animation to the squares 'layer' property
        
        imageView.layer.add(anim, forKey: "animate position along path")
        
        
    }

    
    func drawPath(){
        
        bezierPath.move(to: CGPoint(
            x: 0.0,
            y: view.frame.size.height/2))
        
        bezierPath.addLine(to: CGPoint(
            x: view.frame.size.width/2,
            y: view.frame.size.height*0.25))
        
        bezierPath.addLine(to: CGPoint(
            x: view.frame.size.width,
            y: view.frame.size.width))
        
        
     
        UIColor.black.setStroke()
        
        bezierPath.lineWidth = 1
        bezierPath.close()
        color.setStroke()
        
    }
    
    func addDrawtoView(){
        
        shapeLayer.path = bezierPath.cgPath
        
        shapeLayer.strokeColor = UIColor.red.cgColor
        
        shapeLayer.fillColor = color.cgColor
       
        shapeLayer.lineWidth = 1.0
        
        view.layer.addSublayer(shapeLayer)
    }
    
    func drawTim(){
        //// Bezier Drawing
        
        bezierPath.move(to: CGPoint(x: 48.01, y: 246.38))
        bezierPath.addCurve(to: CGPoint(x: 87.64, y: 180.65), controlPoint1: CGPoint(x: 57.7, y: 206.07), controlPoint2: CGPoint(x: 71.21, y: 185.21))
        bezierPath.addCurve(to: CGPoint(x: 128.95, y: 198), controlPoint1: CGPoint(x: 100.9, y: 176.97), controlPoint2: CGPoint(x: 115.03, y: 184.03))
        bezierPath.addCurve(to: CGPoint(x: 139.83, y: 210.53), controlPoint1: CGPoint(x: 132.92, y: 201.99), controlPoint2: CGPoint(x: 136.58, y: 206.26))
        bezierPath.addCurve(to: CGPoint(x: 142.85, y: 214.65), controlPoint1: CGPoint(x: 140.97, y: 212.02), controlPoint2: CGPoint(x: 141.98, y: 213.41))
        bezierPath.addCurve(to: CGPoint(x: 143.65, y: 215.81), controlPoint1: CGPoint(x: 143.16, y: 215.09), controlPoint2: CGPoint(x: 143.42, y: 215.48))
        bezierPath.addCurve(to: CGPoint(x: 143.92, y: 216.23), controlPoint1: CGPoint(x: 143.78, y: 216.02), controlPoint2: CGPoint(x: 143.87, y: 216.16))
        bezierPath.addLine(to: CGPoint(x: 143.23, y: 216.08))
        bezierPath.addCurve(to: CGPoint(x: 143.62, y: 215.83), controlPoint1: CGPoint(x: 143.3, y: 216.04), controlPoint2: CGPoint(x: 143.43, y: 215.95))
        bezierPath.addCurve(to: CGPoint(x: 144.74, y: 215.13), controlPoint1: CGPoint(x: 143.94, y: 215.63), controlPoint2: CGPoint(x: 144.31, y: 215.4))
        bezierPath.addCurve(to: CGPoint(x: 148.89, y: 212.65), controlPoint1: CGPoint(x: 145.95, y: 214.38), controlPoint2: CGPoint(x: 147.35, y: 213.55))
        bezierPath.addCurve(to: CGPoint(x: 163.01, y: 205.1), controlPoint1: CGPoint(x: 153.31, y: 210.07), controlPoint2: CGPoint(x: 158.08, y: 207.5))
        bezierPath.addCurve(to: CGPoint(x: 180.91, y: 197.68), controlPoint1: CGPoint(x: 169.21, y: 202.09), controlPoint2: CGPoint(x: 175.23, y: 199.56))
        bezierPath.addCurve(to: CGPoint(x: 217.3, y: 204.42), controlPoint1: CGPoint(x: 199.57, y: 191.52), controlPoint2: CGPoint(x: 212.6, y: 192.88))
        bezierPath.addCurve(to: CGPoint(x: 191.95, y: 293.73), controlPoint1: CGPoint(x: 223.08, y: 218.65), controlPoint2: CGPoint(x: 215.46, y: 247.57))
        bezierPath.addCurve(to: CGPoint(x: 130.48, y: 372.63), controlPoint1: CGPoint(x: 172.41, y: 332.09), controlPoint2: CGPoint(x: 151.42, y: 358.56))
        bezierPath.addCurve(to: CGPoint(x: 77.39, y: 379.19), controlPoint1: CGPoint(x: 111.37, y: 385.47), controlPoint2: CGPoint(x: 92.87, y: 387.49))
        bezierPath.addCurve(to: CGPoint(x: 48.01, y: 246.38), controlPoint1: CGPoint(x: 46.21, y: 362.47), controlPoint2: CGPoint(x: 33.15, y: 308.25))
        bezierPath.addCurve(to: CGPoint(x: 77.86, y: 378.31), controlPoint1: CGPoint(x: 34.21, y: 308.09), controlPoint2: CGPoint(x: 47.16, y: 361.85))
        bezierPath.addCurve(to: CGPoint(x: 129.92, y: 371.8), controlPoint1: CGPoint(x: 92.99, y: 386.42), controlPoint2: CGPoint(x: 111.11, y: 384.45))
        bezierPath.addCurve(to: CGPoint(x: 191.05, y: 293.27), controlPoint1: CGPoint(x: 150.7, y: 357.84), controlPoint2: CGPoint(x: 171.59, y: 331.5))
        bezierPath.addCurve(to: CGPoint(x: 216.37, y: 204.8), controlPoint1: CGPoint(x: 214.44, y: 247.36), controlPoint2: CGPoint(x: 222, y: 218.66))
        bezierPath.addCurve(to: CGPoint(x: 181.22, y: 198.63), controlPoint1: CGPoint(x: 211.95, y: 193.92), controlPoint2: CGPoint(x: 199.44, y: 192.62))
        bezierPath.addCurve(to: CGPoint(x: 163.45, y: 206), controlPoint1: CGPoint(x: 175.59, y: 200.5), controlPoint2: CGPoint(x: 169.61, y: 203))
        bezierPath.addCurve(to: CGPoint(x: 149.4, y: 213.51), controlPoint1: CGPoint(x: 158.54, y: 208.39), controlPoint2: CGPoint(x: 153.79, y: 210.95))
        bezierPath.addCurve(to: CGPoint(x: 145.26, y: 215.98), controlPoint1: CGPoint(x: 147.86, y: 214.41), controlPoint2: CGPoint(x: 146.47, y: 215.24))
        bezierPath.addCurve(to: CGPoint(x: 144.15, y: 216.68), controlPoint1: CGPoint(x: 144.84, y: 216.25), controlPoint2: CGPoint(x: 144.47, y: 216.48))
        bezierPath.addCurve(to: CGPoint(x: 143.77, y: 216.92), controlPoint1: CGPoint(x: 143.96, y: 216.8), controlPoint2: CGPoint(x: 143.84, y: 216.88))
        bezierPath.addLine(to: CGPoint(x: 143.35, y: 217.19))
        bezierPath.addLine(to: CGPoint(x: 143.08, y: 216.77))
        bezierPath.addCurve(to: CGPoint(x: 142.81, y: 216.37), controlPoint1: CGPoint(x: 143.04, y: 216.7), controlPoint2: CGPoint(x: 142.95, y: 216.57))
        bezierPath.addCurve(to: CGPoint(x: 142.03, y: 215.23), controlPoint1: CGPoint(x: 142.59, y: 216.04), controlPoint2: CGPoint(x: 142.33, y: 215.66))
        bezierPath.addCurve(to: CGPoint(x: 139.04, y: 211.13), controlPoint1: CGPoint(x: 141.17, y: 213.99), controlPoint2: CGPoint(x: 140.17, y: 212.61))
        bezierPath.addCurve(to: CGPoint(x: 128.24, y: 198.7), controlPoint1: CGPoint(x: 135.81, y: 206.89), controlPoint2: CGPoint(x: 132.18, y: 202.66))
        bezierPath.addCurve(to: CGPoint(x: 87.91, y: 181.61), controlPoint1: CGPoint(x: 114.55, y: 184.96), controlPoint2: CGPoint(x: 100.73, y: 178.06))
        bezierPath.addCurve(to: CGPoint(x: 48.99, y: 246.62), controlPoint1: CGPoint(x: 71.91, y: 186.05), controlPoint2: CGPoint(x: 58.6, y: 206.62))
        bezierPath.close()
       
        bezierPath.fill()
        
    }
        

}


