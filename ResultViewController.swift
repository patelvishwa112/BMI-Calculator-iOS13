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
    @IBOutlet weak var viewBackground: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // Initialize variables to store information from previous screen
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change the labels and background color
        bmiLabel.text = bmiValue!
        viewBackground.backgroundColor = color!
        adviceLabel.text = advice!
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Go back to previous screen using UIViewController method
        dismiss(animated: true, completion: nil)
    }
}
