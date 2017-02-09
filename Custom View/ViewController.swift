//
//  ViewController.swift
//  Custom View
//
//  Created by mitchell hudson on 11/1/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        box.layer.addBorder(edge: .top, color: .red, thickness: 10)
        box.layer.addBorder(edge: .left, color: .red, thickness: 10)
        box.layer.addBorder(edge: .right, color: .red, thickness: 10)
        box.layer.addBorder(edge: .bottom, color: .red, thickness: 10)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        // parkingManager.destroy()
        // parkingManager = nil
    }


}

