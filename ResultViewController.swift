//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vishwa Patel on 3/21/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Go back to previous screen using UIViewController method
        dismiss(animated: true, completion: nil)
    }
}
