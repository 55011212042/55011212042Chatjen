//
//  ViewController.swift
//  Animation6
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let butterfly = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        butterfly.image = UIImage(named: "Butterfly.png")
        butterfly.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(butterfly)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animationButton(sender: AnyObject) {
        let viewsToAnimate = [butterfly]
        UIView.performSystemAnimation(UISystemAnimation.Delete, onViews: viewsToAnimate, options: nil, animations: {
            
        }, completion: { finished in
            
        })
    }

}

