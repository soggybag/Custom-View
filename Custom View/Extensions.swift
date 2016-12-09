//
//  Extensions.swift
//  Custom View
//
//  Created by mitchell hudson on 12/9/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    
    func addBorder(edge: UIRectEdge, color: UIColor, thickness: CGFloat) {
        
        let border = CALayer()
        
        switch edge {
            case UIRectEdge.top:
                // border.frame = CGRect(0, 0, self.frame.height, thickness)
                border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: thickness)
                break
            case UIRectEdge.bottom:
                // border.frame = CGRect(0, CGRectGetHeight(self.frame) - thickness, UIScreen.main.bounds.width, thickness)
                border.frame = CGRect(x: 0, y: self.frame.height - thickness, width: self.frame.width, height: thickness)
                break
            case UIRectEdge.left:
                // border.frame = CGRect(0, 0, thickness, self.frame.height)
                border.frame = CGRect(x: 0, y: 0, width: thickness, height: self.frame.height)
                break
            case UIRectEdge.right:
                // border.frame = CGRect(self.frame.width - thickness, 0, thickness, CGRectGetHeight(self.frame))
                border.frame = CGRect(x: self.frame.width - thickness, y: 0, width: thickness, height: self.frame.height)
                break
            default:
                break
        }
        
        border.backgroundColor = color.cgColor;
        
        self.addSublayer(border)
    }
    
}
