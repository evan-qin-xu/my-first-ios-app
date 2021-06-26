//
//  TriangleResultViewController.swift
//  DualFeat
//
//  Created by Qin Xu on 10/6/21.
//

import UIKit

class TriangleResultViewController: UIViewController {

    var triangleTypeValue: String?
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = triangleTypeValue
    }
    
    // When recalculate button pressed, go back to the calculation UI
    @IBAction func tryAgainButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
