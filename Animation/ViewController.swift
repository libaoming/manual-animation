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
    
    @IBAction func grow(_ sender: AnyObject) {
        
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1) { 
            self.image.frame = CGRect(x: 200, y: 200, width: 300, height: 300)
        }
        
    }
    @IBAction func slideIn(_ sender: AnyObject) {
        
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y - 500)
        
        UIView.animate(withDuration: 1) { 
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y + 500)
        }
    }
    @IBAction func fadeIn(_ sender: AnyObject) {
        
        image.alpha = 0
        
        UIView.animate(withDuration: 1) { 
        
            self.image.alpha = 1
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
       
    }


}

