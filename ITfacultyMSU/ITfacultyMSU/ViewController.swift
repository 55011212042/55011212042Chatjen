//
//  ViewController.swift
//  ITfacultyMSU
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    
    let cellIdentifier="cellIdentifier"
    var tableData=["bossIT","CS","GIS","IT","MC","NMD"]
    var major=["อธิการบดีคณะวิทยาการสารสนเทศ","สาขาวิทยาการคอมพิวเตอร์","สาขาภูมิสารสนเทศศาสตร์","สาขาเทคโนโลยีสารสนเทศ","สาขานิเทศน์ศาสตร์","คอมพิวเตอร์แอนิเมชันและเกม"]
    var detail=["ผู้ช่วยศาสตราจารย์ ดร.สุจิน บุตรดีสุวรรณ \n คณบดีคณะวิทยาการสารสนเทศ \n โทรศัพท์ : 5176",
        "วิทยาศาสตรบัณฑิต (วิทยาการคอมพิวเตอร์) \n วท.บ. (วิทยาการคอมพิวเตอร์) \n จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 132 หน่วยกิต",
        "วิทยาศาสตรบัณฑิต (ภูมิสารสนเทศ) \n วท.บ. (ภูมิสารสนเทศ) \n จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 130 หน่วยกิต ",
        "วิทยาศาสตรบัณฑิต (เทคโนโลยีสารสนเทศ) \n วท.บ. (เทคโนโลยีสารสนเทศ) \n จำนวนหน่วยกิตกำหนดไว้ในเกณฑ์มาตรฐานหลักสูตรของกระทรวงศึกษาธิการ ",
        "นิเทศศาสตรบัณฑิต (นิเทศศาสตร์) \n นศ.บ. (นิเทศศาสตร์) \n จำนวนหน่วยกิตรวมไม่น้อยกว่า 123 หน่วยกิต",
        "วิทยาศาสตรบัณฑิต (คอมพิวเตอร์แอนนิเมชันและเกม) \n วท.บ. (คอมพิวเตอร์แอนนิเมชันและเกม) \n จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 131 หน่วยกิต"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        head.image=UIImage(named: "myPic/ITborder.jpg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet var head: UIImageView!
    @IBOutlet var tableView: UITableView!
    
    
    func numberOfSelectionInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell=tableView!.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        cell.textLabel!.text=self.major[indexPath.row]
        var imageName = UIImage(named: "myPic/"+tableData[indexPath.row]+".jpg")
        cell.imageView!.image = imageName
        return cell
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let alert=UIAlertController(title: "คุณเลือก", message: "\(major[indexPath.row])\n\(detail[indexPath.row])", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK",
            style: UIAlertActionStyle.Default,
            handler: {
                (alert: UIAlertAction!) in println("An alert of type \(alert.style.hashValue) was tapped!")
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
      //  self.performSegueWithIdentifier("next", sender: nil)
    }

    

}

