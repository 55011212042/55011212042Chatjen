//
//  ViewController.swift
//  Segue55011212042
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func myVCDidFinish(controller: colorTwoViewController, text: String){
        colorLabel.text = "Co: "+text
        controller.navigationController?.popViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue" {
            let vc = segue.destinationViewController as colorTwoViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    }
    
    @IBOutlet weak var colorLabel: UILabel!

}

