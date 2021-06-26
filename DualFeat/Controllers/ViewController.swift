//
//  ViewController.swift
//  DualFeat
//
//  Created by Qin Xu on 27/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var triangleValidatorButton: UIButton!
    
    @IBOutlet weak var wageCalculatorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Add padding to buttons
        triangleValidatorButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        wageCalculatorButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        // Make button corner rounded
        wageCalculatorButton.layer.cornerRadius = 5
        triangleValidatorButton.layer.cornerRadius = 5
    }


}

