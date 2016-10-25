//
//  ViewController2.swift
//  demo_MapView_Phung
//
//  Created by Phung on 10/25/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    private var myImageView: UIImageView!
    private var timeRotate: TimeInterval!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRotate = 0
        
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        
        let myImage = UIImage(named: "red")
        
        myImageView.image = myImage
        
        myImageView.layer.position = CGPoint(x: 100.0, y: 200.0)
        
        self.view.addSubview(myImageView)
        
        goto()
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func goto(){
        
        let p1 = CGPoint(x: 100.0, y: 200.0)
        let p2 = CGPoint(x: 200.0, y: 250.0)
        let p3 = CGPoint(x: 100.0, y: 350.0)
        
        
        //let angle = getangel(a: p1, b: p2)
        
        //let rotationTransform = CGAffineTransform(rotationAngle: angle)
        
        
        UIView.animate(withDuration: 0.2, animations: {
            
            self.rotate(a: p2, b: p1, c: self.myImageView)
            print(self.timeRotate)
        }) { (finish) in
            
            UIView.animate(withDuration: 2, animations: {
                self.myImageView.layer.position = p2
                }, completion: { (finish) in
                    
                    //rotate before goto point 3
                    UIView.animate(withDuration: self.timeRotate, animations: {
                        self.myImageView.layer.position = p3
                    })
                    
                    UIView.animate(withDuration: self.timeRotate/4, animations: {
                        //self.myImageView.layer.position = p3
                        self.rotate(a: p3, b: p2, c: self.myImageView)
                    })
                    
            })
        }
    }
    
    func getangel(a: CGPoint, b: CGPoint)->CGFloat{
        let angel = CGFloat(atan2f(Float(CGFloat(a.y - b.y)), Float(CGFloat(a.x - b.x))))
        timeRotate = TimeInterval(angel*10)
        return angel
        
    }
    
    func rotate(a: CGPoint, b: CGPoint, c: UIImageView){
        let angle = getangel(a: a, b: b)
        let rotationTransform = CGAffineTransform(rotationAngle: angle)
        c.transform = rotationTransform
        
    }
        
        
    //}
    
    
}
