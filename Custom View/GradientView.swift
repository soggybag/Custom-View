//
//  GradientView.swift
//  Custom View
//
//  Created by mitchell hudson on 11/2/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//



import UIKit

@IBDesignable class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.white {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.black {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var angle: CGFloat = 0 {
        didSet {
            layoutSubviews()
        }
    }
    
    
    var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        let colors  = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.colors = colors
        
        let radians = angle * CGFloat(M_PI) / 180
        
        print("---- \(radians)")
        
        let x1 = cos(radians) * 0.5 + 0.5 // 0 to 1
        let x2 = 1 - x1
        let y1 = sin(radians) * 0.5 + 0.5
        let y2 = 1 - y1
        
        // print("x1: \(x1) y1: \(y1) x2: \(x2) y2: \(y2)")
        
        gradientLayer.endPoint = CGPoint(x: x1, y: y1)
        gradientLayer.startPoint = CGPoint(x: x2, y: y2)
        
        self.setNeedsDisplay()
    }
}








