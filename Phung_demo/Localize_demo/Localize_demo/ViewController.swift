//
//  ViewController.swift
//  Localize_demo
//
//  Created by Phung on 10/30/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hellolbl: UILabel!
    
    @IBOutlet weak var lbl: UILabel!
    
    let hello = "Xin chao".localized()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hellolbl.text = "\(hello) \(lbl.text!)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Click(_ sender: AnyObject) {
        // create the alert
        let alert = UIAlertController(title: "My Title".localized(), message: "This is my message.".localized(), preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK".localized(), style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    
    }

}

