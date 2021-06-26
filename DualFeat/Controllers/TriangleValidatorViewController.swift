//
//  TriangleValidatorViewController.swift
//  DualFeat
//
//  Created by Qin Xu on 8/6/21.
//

import UIKit

class TriangleValidatorViewController: UIViewController {
    
    @IBOutlet weak var side1TextField: UITextField!
    @IBOutlet weak var side2TextField: UITextField!
    @IBOutlet weak var side3TextField: UITextField!
    
    
    var trianlgeValidator = TriangleValidator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func validateButtonPressed(_ sender: UIButton) {
        let side1 = Double(side1TextField.text!)
        let side2 = Double(side2TextField.text!)
        let side3 = Double(side3TextField.text!)
        
        // Check User inputs
        if side1 == nil || side2 == nil || side3 == nil {
            promptAlert()
        } else {
            trianlgeValidator.checkTriangleType(side1: side1!, side2: side2!, side3: side3!)
            
            self.performSegue(withIdentifier: "goToTriangleResult", sender: self)
        }
    }
    
    // Present the result segue modally
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTriangleResult" {
            let destinationVC = segue.destination as! TriangleResultViewController
            destinationVC.triangleTypeValue = trianlgeValidator.getTriangleType()
        }
    }
    
    func promptAlert() {
        // Create the alert controller.
        let alert = UIAlertController(title: "Input Invalid", message: "Please enter numeric values for all three sides", preferredStyle: .alert)

        // Go back to the calculation UI when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        // Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
}
