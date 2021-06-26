//
//  WageCalculator.swift
//  DualFeat
//
//  Created by Qin Xu on 10/6/21.
//

import UIKit

struct WageCalculator {
    
    var weeklyPay: Double = 0.0
    
    mutating func calculateWeeklyPay(hourlyRate: Double, regularHours: Double, overtimeHours: Double) {
        // Wage calculation formula
        weeklyPay = (hourlyRate * Double(regularHours)) + (hourlyRate * 1.8 * Double(overtimeHours));
    }
    
    func getWeeklyPay() -> String {
        return String(format: "%.2f", weeklyPay)
    }
}
