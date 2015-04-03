//
//  ViewController.swift
//  Animation2_55011212042
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let container=UIView()
    let redSquare=UIView()
    let blueSquare=UIView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.container.frame=CGRect(x: 40, y: 50, width: 300, height: 520)
        self.view.addSubview(container)
        
        self.redSquare.frame=CGRect(x: 0, y: 0, width: 300, height: 520)
        self.blueSquare.frame=redSquare.frame
        
        self.redSquare.backgroundColor=UIColor.blueColor()
        self.blueSquare.backgroundColor=UIColor.greenColor()
        
        self.container.addSubview(self.redSquare)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        var views: (frontView: UIView, backView: UIView)
        
        if ((self.redSquare.superview) != nil){
            views=(frontView: self.redSquare, backView: self.blueSquare)
        } else {
            views=(frontView: self.blueSquare, backView: self.redSquare)
        }
        
        let transitionOptions=UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
        
    }
    
}

