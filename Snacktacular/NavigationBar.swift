//
//  NavigationBar.swift
//  Snacktacular
//
//  Created by Connor Goodman on 11/1/21.
//

import UIKit

class NavigationBar: UINavigationController {
    func setBarTintColor() {
        navigationBar.barTintColor = UIColor(named: "Primary Color")
    }
    
    override func viewDidLoad() {
        setBarTintColor()
    }
}
