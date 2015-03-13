//
//  ViewController.swift
//  Exam1_55011212042
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cal=calculateGrade()
    let t=(a:5.0 ,b:10.0 ,c:15.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var subjectName: UITextField!
    @IBOutlet weak var midterm: UITextField!
    @IBOutlet weak var work: UITextField!
    @IBOutlet weak var final: UITextField!
    @IBOutlet weak var mScore: UITextField!
    @IBOutlet weak var wScore: UITextField!
    @IBOutlet weak var fScore: UITextField!
    @IBOutlet weak var showSubject: UILabel!
    @IBOutlet weak var showGrade: UILabel!
    @IBAction func calButton(sender: UIButton) {
        var subject=subjectName.text!
        var midS1=(midterm.text).toInt()!
        var wkS1=(work.text).toInt()!
        var finS1=(final.text).toInt()!
        
        var all=midS1+wkS1+finS1
        if all == 100 {
            var text=subjectName.text!
            var scorem=Double((mScore.text as NSString).doubleValue)
            var scorew=Double((wScore.text as NSString).doubleValue)
            var scoref=Double((fScore.text as NSString).doubleValue)
            
            
            if ( (Int(scorem) <= midS1) && (Int(scorew) <= wkS1) && (Int(scoref) <= finS1) ) {
                var sumScore=scorem+scorew+scoref
                var grade=cal.calG(sumScore)
                
                showSubject.text="ชื่อวิชา : \(subject) "
                var scShow=String(format: "%.2f", sumScore)
                showGrade.text="คะแนรวม : \(scShow) ได้เกรด : \(grade)"
            }
            else {
                showSubject.text="คุณกรอกคะแนนเกินอ่ารู้ป๊ะ"
                showGrade.text="กรอกใหม่เด้อ"
                
                clear()
            }
        }
        else {
            showSubject.text="กรุณากรอกคะแนนให้ถูกต้องด้วย"
            showGrade.text="สู้ๆน๊ะค่ะ"
            clear()
        }
    }
    @IBAction func cal2Button(sender: UIButton) {
        var scorem=Double((mScore.text as NSString).doubleValue)
        var scorew=Double((wScore.text as NSString).doubleValue)
        var scoref=Double((fScore.text as NSString).doubleValue)
        
        var ans1=scorem+scorew+((scoref*(100-(t.a)))/100)
        var ans2=scorem+scorew+((scoref*(100-(t.b)))/100)
        var ans3=scorem+scorew+((scoref*(100+(t.c)))/100)
        
        var G5=cal.calG(ans1)
        var G10=cal.calG(ans2)
        var G15=cal.calG(ans3)
        
        var scShow5=String(format: "%.2f", ans1)
        var scShow10=String(format: "%.2f", ans2)
        var scShow15=String(format: "%.2f", ans3)
        
        show5.text="5% ได้คะแนน : \(scShow5) ได้เกรด : \(G5)"
        show10.text="10% ได้คะแนน : \(scShow10) ได้เกรด : \(G10)"
        show15.text="15% ได้คะแนน : \(scShow15) ได้เกรด : \(G15)"
    }
    @IBOutlet weak var show5: UILabel!
    @IBOutlet weak var show10: UILabel!
    @IBOutlet weak var show15: UILabel!
    
    func clear() {
        subjectName.text=nil
        midterm.text=nil
        work.text=nil
        final.text=nil
        mScore.text=nil
        wScore.text=nil
        fScore.text=nil
    }
    
}

