//
//  WODDetailViewController.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-05-26.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import UIKit

class WODDetailViewController: UIViewController {
    
    // WOD Selected
    var WOD: String!
    
    // interface property
    @IBOutlet weak var WODDetailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the interface prop
        self.WODDetailsLabel.text = WOD
        
        // shrink title for wod
        self.navigationItem.largeTitleDisplayMode = .never
        
    }
    
}
