//
//  AppDelegate.swift
//  tabbar
//
//  Created by Jorge Crisóstomo Palacios on 2/8/15.
//  Copyright (c) 2015 videmor. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let tabBarController = UITabBarController()
        
//        UITabBar.appearance().selectedImageTintColor = UIColor.yellowColor()
        
        let myVC1 = TabOneViewController(nibName: nil, bundle: nil)
        myVC1.view.backgroundColor = UIColor.redColor()
        let myVC2 = TabTwoViewController(nibName: nil, bundle: nil)
        myVC2.view.backgroundColor = UIColor.yellowColor()
        let myVC3 = ThreeViewController(nibName: nil, bundle: nil)
        myVC3.view.backgroundColor = UIColor.blueColor()
        let myVC4 = FourViewController(nibName: nil, bundle: nil)
        myVC4.view.backgroundColor = UIColor.grayColor()
        
        let controllers = [myVC1,myVC2, myVC3, myVC4]
        tabBarController.viewControllers = controllers
        
        window?.rootViewController = tabBarController
        
        let firstImage = UIImage(named: "airplane mode")
        let secondImage = UIImage(named: "archive")
        let threeImage = UIImage(named: "inbox")
        let fourImage = UIImage(named: "flag")
        myVC1.tabBarItem = UITabBarItem(title: "icon 1", image: firstImage, tag: 1)
        myVC2.tabBarItem = UITabBarItem(title: "icon 2", image: secondImage, tag:2)
        myVC3.tabBarItem = UITabBarItem(title: "icon 3", image: threeImage, tag:3)
        myVC4.tabBarItem = UITabBarItem(title: "icon 4", image: fourImage, tag:4)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

