//
//  AppDelegate.swift
//  MapTracePoc
//
//  Created by Fang Chen on 5/21/20.
//  Copyright © 2020 Fang Chen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, BMKGeneralDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // 要使用百度地图，请先启动BMKMapManager
        let mapManager = BMKMapManager()
        // 启动引擎并设置AK并设置delegate
        if !(mapManager.start("Uz99Wywi6FRKqjve3RbKufUGC5jvXKed", generalDelegate: self)) {
            NSLog("启动引擎失败")
        }
        
        if BMKMapManager.setCoordinateTypeUsedInBaiduMapSDK(BMK_COORD_TYPE.COORDTYPE_COMMON) {
            NSLog("经纬度类型设置成功")
        } else {
            NSLog("经纬度类型设置失败")
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

