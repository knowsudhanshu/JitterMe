//
//  Jitterable.swift
//  JitterMe
//
//  Created by Sudhanshu Sudhanshu on 31/12/18.
//  Copyright © 2018 Sudhanshu Sudhanshu. All rights reserved.
//

import UIKit

protocol Jitterable {}

extension Jitterable where Self: UIView {
    
    func jitter() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.04
        animation.repeatCount = 5
        animation.autoreverses = true
        
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 5, y: self.center.y))
        
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 5, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
