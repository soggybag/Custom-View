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
    
    var parkingManager = ParkingManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
<<<<<<< HEAD
        OneParkingManager.sharedInstance.getParking()
        OneParkingManager.sharedInstance.findLocation()
=======
        box.layer.addBorder(edge: .top, color: .red, thickness: 10)
        box.layer.addBorder(edge: .left, color: .red, thickness: 10)
        box.layer.addBorder(edge: .right, color: .red, thickness: 10)
        box.layer.addBorder(edge: .bottom, color: .red, thickness: 10)
>>>>>>> origin/master
        
        
        
//        
//        box.layer.addBorder(edge: .top, color: .red, thickness: 10)
//        box.layer.addBorder(edge: .right, color: .green, thickness: 10)
//        box.layer.addBorder(edge: .bottom, color: .orange, thickness: 10)
//        box.layer.addBorder(edge: .left, color: .blue, thickness: 10)
//        
        
        print("--------------------------")
        
        // Test
//        var angle: Double = 0
//        let step = M_PI * 2 / 8
//        print("Step: \(step)")
//        while angle < M_PI * 2 {
//            let x = sin(angle) // 1.0 to -1.0
//            print("\(x)")
//            angle += step
//        }
        
        // let x = cos(angle) * 0.5 + 0.5
        // let y = sin(angle) * 0.5 + 0.5
        
        // print(x, y)
        
        
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

