//
//  AppDelegate.swift
//  localPushNotification_Phung
//
//  Created by Phung on 10/26/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Init button 1
        let completeAction = UIMutableUserNotificationAction()
        
        // the unique identifier for this action
        completeAction.identifier = "COMPLETE_TODO"
        
        // title for the action button
        completeAction.title = "Complete"
        
        // UIUserNotificationActivationMode.Background - don't bring app to foreground
        completeAction.activationMode = .background
        
        // authenticationRequired: This property is a bool value also. When it becomes true, the user must necessarily authenticate himself to the device before the action is performed. It’s extremely useful in cases where the action is critical enough, and any unauthorised access can damage the application’s data.
        completeAction.isAuthenticationRequired = false
        
        // destructive: This is a bool value. When it is set to true the respective button in the notification has red background colour. Note that this happens in the banner mode only. Usually, actions regarding deletion, removal and anything else critical are marked as destructive, so they increase the user’s attention.
        completeAction.isDestructive = true
        
        //Init button 2
        
        let remindAction = UIMutableUserNotificationAction()
        remindAction.identifier = "REMIND"
        remindAction.title = "Remind"
        remindAction.activationMode = .background
        remindAction.isDestructive = false
        remindAction.isAuthenticationRequired = false
        
        let trashAction = UIMutableUserNotificationAction()
        trashAction.identifier = "trashAction"
        trashAction.title = "Delete list"
        trashAction.activationMode = UIUserNotificationActivationMode.background
        trashAction.isDestructive = true
        trashAction.isAuthenticationRequired = true
        
        
        //notification categories allow us to create groups of actions that we can associate with a notification
        let todoCategory = UIMutableUserNotificationCategory()
        todoCategory.identifier = "TODO_CATEGORY"
        
        // UIUserNotificationActionContext.Default (4 actions max)
        todoCategory.setActions([remindAction, completeAction, trashAction], for: UIUserNotificationActionContext.default)
        
        //todoCategory.setActions([remindAction, completeAction], for: .default)
        
        // UIUserNotificationActionContext.Minimal - for when space is limited (2 actions max)
        todoCategory.setActions([completeAction, remindAction], for: .minimal)
        
        
        // we're now providing a set containing our category as an argument
        application.registerUserNotificationSettings(UIUserNotificationSettings(
            types: [.alert, .badge, .sound],
            categories: Set([todoCategory])))
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        
        UIApplication.shared.applicationIconBadgeNumber = 1
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, completionHandler: @escaping () -> Void) {
        
        switch (identifier!) {
            
        case "COMPLETE_TODO":
            print("Completed clicked")
        case "REMIND":
            print("Remind clicked")
        default: // switch statements must be exhaustive - this condition should never be met
            print("Error: unexpected notification action identifier!")
        }
        completionHandler() // per developer documentation, app will terminate if we fail to call this
    }


}

