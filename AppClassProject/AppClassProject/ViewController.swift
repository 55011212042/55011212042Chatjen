//
//  ViewController.swift
//  AppClassProject
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num1: Int = 0
    var num2: Int = 0
    var num3: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var showNumber1: UILabel!
    @IBOutlet weak var showNumber2: UILabel!
    @IBOutlet weak var showNumber3: UILabel!
    @IBAction func buttonOne(sender: AnyObject) {
        num1=call.num1Update(num1)
        showNumber1.text="\(num1)"
        
    }
    @IBAction func buttonTwo(sender: AnyObject) {
        num2=call.num2Update(num2)
        showNumber2.text="\(num2)"
    }
    @IBAction func buttonThree(sender: AnyObject) {
        num3=call.num3Update(num3)
      //  num3+=1
        showNumber3.text="\(num3)"
    }
    @IBAction func buttonResetAll(sender: AnyObject) {
        num1=0
        num2=0
        num3=0
        showNumber1.text="0"
        showNumber2.text="0"
        showNumber3.text="0"
    }
    
    let call=numUpdate();
}

