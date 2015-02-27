//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon> {
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "images/orange.jpg"),bName: "Orange")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "images/banana.jpg"),bName: "Banana")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "images/apple.jpg"),bName: "Apple")
        tempArray.append(b3)
        
        let b4 = balloon(bImage: UIImage(named: "images/seda.jpg"),bName: "Seda")
        tempArray.append(b4)
        
        let b5 = balloon(bImage: UIImage(named: "images/mango.jpg"),bName: "Mango")
        tempArray.append(b5)
        
        let b6 = balloon(bImage: UIImage(named: "images/papaya.jpg"),bName: "Papaya")
        tempArray.append(b6)
        
        return tempArray
    }
}
