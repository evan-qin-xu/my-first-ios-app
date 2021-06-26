//
//  WageCalculatorViewController.swift
//  DualFeat
//
//  Created by Qin Xu on 8/6/21.
//

import UIKit

class WageCalculatorViewController: UIViewController {
    
    @IBOutlet weak var hourlyRateTextField: UITextField!
    @IBOutlet weak var regularHoursTextField: UITextField!
    @IBOutlet weak var overtimeHoursTextField: UITextField!
    
    var wageCalculator = WageCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let hourlyRate = Double(hourlyRateTextField.text!)
        let regularHours = Double(regularHoursTextField.text!)
        let overtimeHours = Double(overtimeHoursTextField.text!)
        
        // Check user input
        if hourlyRate == nil || regularHours == nil || overtimeHours == nil {
            promptAlert()
        } else {
            wageCalculator.calculateWeeklyPay(hourlyRate: hourlyRate!, regularHours: regularHours!, overtimeHours: overtimeHours!)
            
            self.performSegue(withIdentifier: "goToWageResult", sender: self)
        }
    }
    
    // Present the result segue modally
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToWageResult" {
            let destinationVC = segue.destination as! WageResultViewController
            destinationVC.weeklyPayValue = wageCalculator.getWeeklyPay()
        }
    }

    
    func promptAlert() {
        // Create the alert controller.
        let alert = UIAlertController(title: "Invalid Input", message: "Please enter numeric values in all three fields", preferredStyle: .alert)

        // Go back to the calculation UI when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        // Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
}
