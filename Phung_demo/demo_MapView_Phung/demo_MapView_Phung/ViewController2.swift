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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        
        let myImage = UIImage(named: "red")
        
        myImageView.image = myImage
        
        myImageView.layer.position = CGPoint(x: 100.0, y: 200.0)
        
        self.view.addSubview(myImageView)
        
        let p1 = CGPoint(x: 100.0, y: 200.0)
        let p2 = CGPoint(x: 200.0, y: 250.0)
      
        let angle: CGFloat = CGFloat(atan2f(Float(CGFloat(p2.y - p1.y)), Float(CGFloat(p2.x - p1.x))))
        
        let rotationTransform = CGAffineTransform(rotationAngle: angle)
        
        
        UIView.animate(withDuration: 1, animations: {
            self.myImageView!.transform = rotationTransform
        }) { (finish) in
            UIView.animate(withDuration: 2, animations: {
                self.myImageView.layer.position = p2
                
            })
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
