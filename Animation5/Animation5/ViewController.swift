//
//  ViewController.swift
//  Animation5
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ovalStartAngle = CGFloat(90.01 * M_PI/180)
    let ovalEndAngle = CGFloat(90 * M_PI/180)
    let ovalRect = CGRectMake(97.5, 58.5, 125, 125)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animationButton(sender: AnyObject) {
        let ovalPath = UIBezierPath()
        ovalPath.addArcWithCenter(CGPointMake(CGRectGetMidX(ovalRect), CGRectGetMidY(ovalRect)),
            radius: CGRectGetWidth(ovalRect) / 2,
            startAngle: ovalStartAngle,
            endAngle: ovalEndAngle, clockwise: true)
        
        let progressLine = CAShapeLayer()
        progressLine.path = ovalPath.CGPath
        progressLine.strokeColor = UIColor.blueColor().CGColor
        progressLine.fillColor = UIColor.clearColor().CGColor
        progressLine.lineWidth = 10.0
        progressLine.lineCap = kCALineCapRound
        
        self.view.layer.addSublayer(progressLine)

        let animateStrokeEnd = CABasicAnimation(keyPath: "strokeEnd")
        animateStrokeEnd.duration = 3.0
        animateStrokeEnd.fromValue = 0.0
        animateStrokeEnd.toValue = 1.0

        progressLine.addAnimation(animateStrokeEnd, forKey: "animate stroke end animation")
    }

}

