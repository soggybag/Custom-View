//
//  CustomButton.swift
//  EarPractice
//
//  Created by mitchell hudson on 9/7/16.
//  Copyright © 2016 Mitchell Hudson. All rights reserved.
//

import UIKit

@IBDesignable
class CustomLabel: UILabel {
    @IBInspectable var borderColor: UIColor? = UIColor.clear {
        didSet {
            layer.borderColor = self.borderColor?.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = self.cornerRadius
            layer.masksToBounds = self.cornerRadius > 0
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    
    override func layoutSubviews() {
        // Why layout subviews here? http://stackoverflow.com/questions/20970786/uilabel-subclass-doesnt-show-text
        self.layer.cornerRadius = self.cornerRadius
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = self.borderColor?.cgColor
        
        setNeedsDisplay()
    }
    
}
