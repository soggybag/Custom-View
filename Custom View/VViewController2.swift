//
//  VViewController2.swift
//  Custom View
//
//  Created by mitchell hudson on 2/9/17.
//  Copyright © 2017 mitchell hudson. All rights reserved.
//

import UIKit

class VViewController2: UIViewController {
    
    @IBOutlet var gradView: GradientView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let count = 8
        for i in 0 ..< count {
            gradView.angle = CGFloat(i) * CGFloat(360 / count)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
