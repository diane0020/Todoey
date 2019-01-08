//
//  AppDelegate.swift
//  Todoey
//
//  Created by John Randolph Bangal on 18/12/2018.
//  Copyright © 2018 Diana Rose Bangal. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
        //MARK: Realm Initialization
        //print(Realm.Configuration.defaultConfiguration.fileURL)
        
        do {
            _ = try Realm()

        }
        catch {
            print("Error initialisin new Realm, \(error)")
        }
        
        return true
    }
}

