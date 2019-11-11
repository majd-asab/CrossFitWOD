//
//  WODDetailViewController.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-05-26.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import UIKit

class WODDetailViewController: UIViewController {
    
    // WOD details
     var wodGroup: WOD?
    
    // interface property
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var wod: UILabel!
    @IBOutlet weak var timeTitle: UILabel!
    @IBOutlet weak var typeTitle: UILabel!
    @IBOutlet weak var wodTitle: UILabel!
    
    private func typeString() -> String {
        switch wodGroup?.type {
            case .AMRAP: return "AMRAP"
            case .EMOM: return  "EMOM"
            case .RND(let number): return "\(number) Rounds"
            default: return ""
                
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // shrink title for wod
        self.navigationItem.largeTitleDisplayMode = .never
        
        self.time.text = "\(wodGroup?.time ?? 0) minutes"
        self.type.text = typeString()
        self.wod.text =  wodGroup?.workout.joined(separator: "\n")
        
        self.timeTitle.text = "Time"
        self.timeTitle.font =  UIFont.boldSystemFont(ofSize: 20.0)
        self.typeTitle.text = "Type"
        self.typeTitle.font =  UIFont.boldSystemFont(ofSize: 20.0)
        self.wodTitle.text = "WOD"
        self.wodTitle.font =  UIFont.boldSystemFont(ofSize: 20.0)
    }
}
