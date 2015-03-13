//
//  calculateGrade.swift
//  Exam1_55011212042
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
class calculateGrade {
    func calG (score: Double) -> String{
        var grade=""
        if score >= 80 {
            grade="A";
        }
        else if score >= 74 {
            grade="B+"
        }
        else if score >= 68 {
            grade="B"
        }
        else if score >= 62 {
            grade="C+"
        }
        else if score >= 56 {
            grade="C"
        }
        else if score >= 50 {
            grade="D+"
        }
        else if score >= 44 {
            grade="D"
        }
        else {
            grade="F"
        }
        return grade
    }
}