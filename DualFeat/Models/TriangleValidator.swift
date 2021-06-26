//
//  TriangleValidator.swift
//  DualFeat
//
//  Created by Qin Xu on 11/6/21.
//

import Foundation

struct TriangleValidator{
    
    var triangleType: String = ""
    
    
    mutating func checkTriangleType(side1: Double, side2: Double, side3: Double) {
        if !isTriangle(side1: side1, side2: side2, side3: side3) {
             triangleType = "Not a valid triangle"
        } else {
            let sides: Set<Double> = [side1, side2, side3]
            
            // Check triangle type
            if sides.count == 1 {
                triangleType = "Equilateral triangle"
            } else if sides.count == 2 {
                triangleType = "Isosceles triangle"
            } else {
                triangleType = "Scalene Triangle"
            }
        }
    }
    
    // Check triangle condition: The sum of the lengths of any two sides of a triangle is greater than the length of the third side.
    func isTriangle(side1: Double, side2: Double, side3: Double) -> Bool{
        if side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1 {
            return true
        }
        return false
    }
    
    func getTriangleType() -> String {
        return triangleType
    }
}
