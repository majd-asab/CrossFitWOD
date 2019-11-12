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
            case .RND(let number): return "\(number) Round[s]"
            default: return ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.time.alpha = 0
        self.type.alpha = 0
        self.wod.alpha = 0
        
        // shrink title for wod
        self.navigationItem.largeTitleDisplayMode = .never
        
        if let timeAvailable = wodGroup?.time {
         self.time.text = "\(timeAvailable) minutes"
        } else {
         self.time.text = ""
        }
        self.type.text = typeString()
        self.wod.text =  wodGroup?.workout.joined(separator: "\n")
        
        self.timeTitle.text = "Time"
        self.timeTitle.font =  UIFont.boldSystemFont(ofSize: 20.0)
        self.typeTitle.text = "Type"
        self.typeTitle.font =  UIFont.boldSystemFont(ofSize: 20.0)
        self.wodTitle.text = "WOD"
        self.wodTitle.font =  UIFont.boldSystemFont(ofSize: 20.0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.2) {
            [weak self] in
            self?.time.alpha = 1
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.3, options: [], animations:  {
            [weak self] in
            self?.type.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 0.2, delay: 0.4, options: [], animations: {
            [weak self] in
            self?.wod.alpha = 1
        }, completion: nil)
    }
}
