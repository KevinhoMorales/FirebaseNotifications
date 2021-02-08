//
//  ViewController.swift
//  Notifications
//
//  Created by Kevin Morales on 8/2/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        askNotifications()
        // Do any additional setup after loading the view.
    }

    
    private func askNotifications() {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .badge, .sound]) { [self] (success, error) in
            if error == nil {
                if success == true {
                    print("Permission granted")
                } else {
                    print("Permission denied")
                }
            }
        }
    }

}

