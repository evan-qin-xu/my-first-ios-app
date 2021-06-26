//
//  AlertBox.swift
//  DualFeat
//
//  Created by Qin Xu on 11/6/21.
//

import UIKit

class AlertBox {
    
    class func promptAlert(title: String, message: String) {
        // Create the alert controller.
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        // Go back to the calculation UI when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        // Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    
}
