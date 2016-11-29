//
//  GradientView.swift
//  Custom View
//
//  Created by mitchell hudson on 11/2/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//



import UIKit

@IBDesignable
class GradientView: UIView {
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
    
    
    
    
    
    @IBInspectable var gradientX: CGFloat = 0.5 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var gradientY: CGFloat = 0.5 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var gradientEndX: CGFloat = 0.5 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var gradientEndY: CGFloat = 0.5 {
        didSet {
            layoutSubviews()
        }
    }
    
    
    
    
    /*@IBInspectable var angle: CGFloat = 0 {
        didSet {
            layoutSubviews()
        }
    }*/
    
    var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        let colors  = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.colors = colors
        
        // GOAL: Use one number to calculate angle for gradient
        // TODO: Find x and y pairs for angle
        
        // let x = cos(angle) * 0.5 + 0.5
        // let y = sin(angle) * 0.5 + 0.5
        
        // print(x, y)
        gradientLayer.endPoint = CGPoint(x: gradientX, y: gradientY)
        gradientLayer.startPoint = CGPoint(x: gradientEndX, y: gradientEndY)
        
        self.setNeedsDisplay()
    }
}








