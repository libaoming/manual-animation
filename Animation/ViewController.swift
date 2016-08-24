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
    
    @IBOutlet weak var btn: UIButton!
    var counter = 1
    
    var timer: Timer = Timer()
    
    @IBAction func timerManager(_ sender: AnyObject) {
        
        if timer.isValid {
            timer.invalidate()
            btn.setTitle("start a animation", for: [])
        }else {
            timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(ViewController.next(_:)), userInfo: nil, repeats: true)
            
            btn.setTitle("Stop a animation", for: [])
        }
    }
    @IBAction func next(_ sender: AnyObject) {
        
       
            
            image.image = UIImage(named: "frame_\(counter)_delay-0.1s.gif")
            counter += 1
            
            if counter == 11 {
                counter = 0
            }

    
      
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
       
    }


}

