//
//  WOD.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-10-26.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import Foundation

struct WOD {
    var name: String
    var type: WODTypeEnum
    var time: Int // in minutes
    var workout: [String]
    
    init(name: String, type: WODTypeEnum, time: Int, _ workout: [String]) {
        self.name = name
        self.type = type
        self.time = time
        self.workout = workout
    }
}
