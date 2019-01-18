//
//  AppDelegate.swift
//  Todoey
//
//  Created by Mehmet Sahin on 1/16/19.
//  Copyright © 2019 Mehmet Sahin. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // print(Realm.Configuration.defaultConfiguration.fileURL)
        do {
            _ = try Realm()
        }
        catch {
            print("Error installing real \(error)")
        }

        return true
    }

}

