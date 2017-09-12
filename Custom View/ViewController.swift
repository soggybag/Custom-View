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
        
        /*
        box.layer.addBorder(edge: .top, color: .red, thickness: 10)
        box.layer.addBorder(edge: .left, color: .red, thickness: 10)
        box.layer.addBorder(edge: .right, color: .red, thickness: 10)
        box.layer.addBorder(edge: .bottom, color: .red, thickness: 10)
        */
        
        let str = "0700"
        if let n = Int(str) {
            print(formatTime(n: n))
        }
        
        let d = ["education": 12, "account": 23, "location": 34]
        
        for (key, value) in d {
            print("Key: \(key) value: \(value)")
        }
        
        
    }
    
func formatTime(n: Int) -> String {
    let t = n % 1200
    var ampm = "am"
    if n > 1159 {
        ampm = "pm"
    }
    
    return "\(t) \(ampm)"
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

