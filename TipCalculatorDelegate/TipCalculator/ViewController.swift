//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Add code this
        refreshUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // Button ,View ,Slider ,Label
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    
    // Action (Button, Slide, Tap gesture)
    @IBAction func calculateTapped(sender: AnyObject) {
        // 1
        tipCalc.total=Double((totalTextField.text as NSString).doubleValue)
        // 2
        let possibleTips=tipCalc.returnPossibleTips()
        var results=""
        // 3
        for(tipPct,tipValue) in possibleTips{
            results+="\(tipPct)%: \(tipValue)\n"
        }
        // 5
        resultsTextView.text=results
    }
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct=Double(taxPctSlider.value)/100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject) {
        totalTextField.resignFirstResponder()   // เพื่อไม่ให้ใช้คีย์บอร์ด
    }
    
    // Add function Action slide
    let tipCalc=TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    func refreshUI(){
        totalTextField.text=String(format: "%0.2f", tipCalc.total)
        taxPctSlider.value=Float(tipCalc.taxPct)*100.0
        taxPctLabel.text="Tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextView.text=""
    }
 //   @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView: UITableView!
}

