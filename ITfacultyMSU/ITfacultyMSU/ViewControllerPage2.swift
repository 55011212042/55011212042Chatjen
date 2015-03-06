//
//  ViewControllerPage2.swift
//  ITfacultyMSU
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate {
    func myVCDidFinish(controller:ColorTwoViewControllerDelegate,text:String)
}

class ViewControllerPage2: UIViewController {
    
    var tableData=["bossIT","CS","GIS","IT","MC","NMD"]
    var major=["อธิการบดีคณะวิทยาการสารสนเทศ","สาขาวิทยาการคอมพิวเตอร์","สาขาภูมิสารสนเทศศาสตร์","สาขาเทคโนโลยีสารสนเทศ","สาขานิเทศน์ศาสตร์","คอมพิวเตอร์แอนิเมชันและเกม"]
    var detail=["ผู้ช่วยศาสตราจารย์ ดร.สุจิน บุตรดีสุวรรณ คณบดีคณะวิทยาการสารสนเทศ โทรศัพท์ : 5176",
                "วิทยาศาสตรบัณฑิต (วิทยาการคอมพิวเตอร์) วท.บ. (วิทยาการคอมพิวเตอร์) จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 132 หน่วยกิต",
                "วิทยาศาสตรบัณฑิต (ภูมิสารสนเทศ) วท.บ. (ภูมิสารสนเทศ) จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 130 หน่วยกิต ",
                "วิทยาศาสตรบัณฑิต (เทคโนโลยีสารสนเทศ) วท.บ. (เทคโนโลยีสารสนเทศ) จำนวนหน่วยกิตกำหนดไว้ในเกณฑ์มาตรฐานหลักสูตรของกระทรวงศึกษาธิการ ",
                "นิเทศศาสตรบัณฑิต (นิเทศศาสตร์) นศ.บ. (นิเทศศาสตร์) จำนวนหน่วยกิตรวมไม่น้อยกว่า 123 หน่วยกิต",
                "วิทยาศาสตรบัณฑิต (คอมพิวเตอร์แอนนิเมชันและเกม) วท.บ. (คอมพิวเตอร์แอนนิเมชันและเกม) จำนวนหน่วยกิตรวมตลอดหลักสูตรไม่น้อยกว่า 131 หน่วยกิต"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var majorShow: UILabel!
    @IBOutlet weak var detailShow: UILabel!
    
    

}
