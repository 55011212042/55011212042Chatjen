//
//  colorTwoViewController.swift
//  Segue55011212042
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate {
    func myVCDidFinish(controller:colorTwoViewController,text:String)
}

class colorTwoViewController: UIViewController {

    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colorString
        
    }

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if (delegate != nil) {
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
    
    
    
    @IBAction func colorSelectionButton(sender: AnyObject) {
        colorLabel.text = sender.titleLabel!.text!
    }
    
    
    
    
    @IBOutlet weak var colorLabel: UILabel!
}
