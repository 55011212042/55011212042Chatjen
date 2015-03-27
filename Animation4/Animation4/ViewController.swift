//
//  ViewController.swift
//  Animation4
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let square=UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
  /*      square.frame=CGRect(x: 55, y: 300, width: 20, height: 20)
        square.backgroundColor=UIColor.redColor()
        
        self.view.addSubview(square)  */
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func animationButton(sender: AnyObject) {
        
   /*     let path=UIBezierPath()
        path.moveToPoint(CGPoint(x: 16, y: 236))
        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
        
        let anim=CAKeyframeAnimation(keyPath: "position")
        
        anim.path=path.CGPath
        
        anim.rotationMode=kCAAnimationRotateAuto
        anim.repeatCount=Float.infinity
        anim.duration=5.0
        
        square.layer.addAnimation(anim, forKey: "animate position along path") */
        
        for i in 0...5 {
            
            let square = UIView()
            square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
            square.backgroundColor = UIColor.redColor()
            self.view.addSubview(square)
            
            let randomYOffset = CGFloat( arc4random_uniform(150))
            
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16,y: 239 + randomYOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
            
            let anim = CAKeyframeAnimation(keyPath: "position")
            
            anim.duration=Double(arc4random_uniform(40)+30)/10
            anim.timeOffset=Double(arc4random_uniform(290))
            
            anim.path = path.CGPath
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
            anim.duration = 5.0
            
            square.layer.addAnimation(anim, forKey: "animate position along path")
            
            
        }
    }


}

