//
//  AppDelegate.swift
//  LifeCycle
//
//  Created by clobotics_ccp on 2019/9/3.
//  Copyright © 2019 cool-ccp. All rights reserved.
//

import UIKit
import CCPLog

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    //app 启动完成, 只会在启动后调用一次
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        CCPLog.log(info: #function)
        print(#function, window ?? "now window is nil")
        print(NSHomeDirectory())
        return true
    }

    //app即将变成不活跃状态，每一次进入后台前都会调用
    func applicationWillResignActive(_ application: UIApplication) {
        CCPLog.log(info: #function)
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    //app进入后台状态，每一次进入后台都会调用
    func applicationDidEnterBackground(_ application: UIApplication) {
        CCPLog.log(info: #function)
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    //app即将进入前台状态，每一次进入前台都会调用(启动时不会调用)
    func applicationWillEnterForeground(_ application: UIApplication) {
        CCPLog.log(info: #function)
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    //app为活跃状态， 每一次变为活跃都会调用
    func applicationDidBecomeActive(_ application: UIApplication) {
        CCPLog.log(info: #function)
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    //app即将终止，当程序处于挂起状态是不会调用
    func applicationWillTerminate(_ application: UIApplication) {
        CCPLog.log(info: #function)
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //通过url打开时调用
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        CCPLog.log(info: #function)
        return true
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        CCPLog.log(info: #function)
    }

}

