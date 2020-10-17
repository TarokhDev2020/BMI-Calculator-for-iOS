//
//  RoundButton.swift
//  BMICalculator
//
//  Created by Tarokh on 8/1/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import UIKit

@IBDesignable
open class RoundButton: UIButton {
 
    // define some functions
    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 5.0
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
}
