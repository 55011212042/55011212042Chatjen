//
//  ViewController.swift
//  Animation3
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let butterfly=UIImageView()
    
    let duration=0.25
    let delay=0.0
    let options=UIViewKeyframeAnimationOptions.CalculationModeLinear

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        butterfly.image=UIImage(named: "Butterfly.png")
        butterfly.frame=CGRect(x: 50, y: 50, width: 200, height: 200)
        self.view.addSubview(butterfly)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animationButton(sender: AnyObject) {
        
        let fullRotation=CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            self.butterfly.transform=CGAffineTransformMakeRotation(fullRotation)
        })
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                
                self.butterfly.transform=CGAffineTransformMakeRotation(1/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                
                self.butterfly.transform=CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.butterfly.transform=CGAffineTransformMakeRotation(3/3 * fullRotation)
            })
            }, completion: nil)
    }

}

