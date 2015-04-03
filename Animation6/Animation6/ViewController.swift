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
        butterfly.frame = CGRect(x: 30, y: 50, width: 300, height: 300)
        self.view.addSubview(butterfly)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func animationButton(sender: AnyObject) {
        let viewsToAnimate = [butterfly]
        UIView.performSystemAnimation(UISystemAnimation.Delete, onViews: viewsToAnimate, options: nil, animations: {
            
        },
        completion: {
            finished in
            
        })
    }
}

