//
//  FilterButton.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-06-23.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import UIKit

class FilterButton: UIButton {

//   old implementation
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//
//    init(title: String) {
//        super.init(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
//        self.setTitle(title, for: .normal)
//        setup()
//    }
    
    
    // new implementation
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    
    // required for all designs
    func setup() {
        self.backgroundColor = UIColor.white
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.setTitleColor(.black, for: .normal)
        
    }
}


