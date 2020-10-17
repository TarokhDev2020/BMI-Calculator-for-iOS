//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Tarokh on 8/1/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import UIKit



class ResultViewController: UIViewController {

    //MARK: - @IBOutlets
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var reCalculateButton: UIButton!
    @IBOutlet var reCalculateBottomConstraint: NSLayoutConstraint!
    
    
    
    //MARK: - Variables
    var bmiValue: String?
    var bmiColor: UIColor?
    var advice: String?
    
    
    //MARK: - Views
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        self.view.backgroundColor = bmiColor
        self.adviceLabel.text = advice?.uppercased()
        
        self.bmiLabel.textColor = .white
        self.adviceLabel.textColor = .white
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    
    //MARK: - Functions
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func layout() {
        // not writing the iphone 6, 6s, 7 on purpose
        if UIDevice.modelName == "iPhone 8" || UIDevice.modelName == "Simulator iPhone 8" || UIDevice.modelName == "iPhone 8 Plus" || UIDevice.modelName == "Simulator iPhone 8 Plus" {
            reCalculateBottomConstraint.constant = -10.0
        }
        else {
            print("Device not found")
        }
    }
    
}
