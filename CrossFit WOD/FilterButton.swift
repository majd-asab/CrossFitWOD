//
//  FilterButton.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-06-23.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import UIKit

class FilterButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    
    // required for all designs
    func setup() {
        if traitCollection.userInterfaceStyle == .dark {
            self.layer.backgroundColor = UIColor.black.cgColor
        } else {
            self.layer.borderColor = UIColor.white.cgColor
        }

        self.backgroundColor = .darkGray
        self.setTitleColor(.white, for: .normal)
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
    }
}


