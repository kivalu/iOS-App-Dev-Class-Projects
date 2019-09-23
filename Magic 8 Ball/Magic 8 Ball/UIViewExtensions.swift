//
//  UIViewExtensions.swift
//  Magic 8 Ball
//
//  Created by Kivalu Ramanlal on 6/25/19.
//  Copyright © 2019 Kivalu Ramanlal. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func fadeIn() {
        // Move our fade out code from earlier
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: { self.alpha = 1.0 /* Instead of a specific instance of, say, birdTypeLabel, we simply set [thisInstance] (ie, self)'s alpha */}, completion: nil)
    }

    func fadeOut() {
            UIView.animate(withDuration: 3.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {self.alpha = 0.0}, completion: nil)
    }
    
}

