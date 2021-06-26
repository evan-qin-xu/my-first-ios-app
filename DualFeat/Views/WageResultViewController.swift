//
//  WageResultViewController.swift
//  DualFeat
//
//  Created by Qin Xu on 10/6/21.
//

import UIKit

class WageResultViewController: UIViewController {
    
    var weeklyPayValue: String = ""
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "$" + weeklyPayValue
    }
    
    // When recalculate button pressed, go back to the calculation UI
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
