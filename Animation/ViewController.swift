//
//  ViewController.swift
//  Animation
//
//  Created by 李宝明 on 16/8/24.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var counter = 1
    
    @IBAction func next(_ sender: AnyObject) {
      
        
        image.image = UIImage(named: "frame_\(counter)_delay-0.1s.gif")
        counter += 1
        
        if counter == 11 {
            counter = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

