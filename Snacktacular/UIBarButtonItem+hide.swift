//
//  UIBarButtonItem+hide.swift
//  Snacktacular
//
//  Created by Connor Goodman on 11/13/21.
//

import UIKit

extension UIBarButtonItem {
    func hide() {
        self.isEnabled = false
        self.tintColor = .clear
    }
}
