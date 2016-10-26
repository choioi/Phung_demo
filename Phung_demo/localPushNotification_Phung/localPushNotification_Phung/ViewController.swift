//
//  ViewController.swift
//  localPushNotification_Phung
//
//  Created by Phung on 10/26/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firePushLocalNotification()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func closeApp(_ sender: AnyObject) {
        
        exit(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func firePushLocalNotification(){
        let notification = UILocalNotification()
        notification.alertAction = "Bạn đã bỏ lỡ gì đó"
        notification.alertBody = "Hàng trăm sản phẩm đang chờ bạn quay lại"
        notification.soundName = UILocalNotificationDefaultSoundName
        
        //Setup 5s from exit app will push..
        notification.fireDate = Date(timeIntervalSinceNow: 5)
        notification.category = "TODO_CATEGORY"
        UIApplication.shared.scheduleLocalNotification(notification)
    }


}

