//
//  Girls.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-05-26.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import Foundation

struct Girls {
    // MARK: All Girls
    static let allGirls = ["Cindy", "Diane", "Grace", "Isabel", "Mary", "Nasty Girls"]
    
    // MARK: Sets of Girl WOD Contents
    static let CindyContents: Set<Core> = [.pullUp, .pushup, .airSquat]
    static let DianeContents: Set<Core> = [.deadlift, .handStandPushUp, .handstandWalk]
    static let GraceContents: Set<Core> = [.cleanAndJerk]
    static let IsabelContents: Set<Core> = [.barbellSnatch]
    static let MaryContents: Set<Core> = [.handStandPushUp, .pistol, .pullUp]
    static let NastyGirlsContents: Set<Core> = [.airSquat, .muscleup, .hangPowerClean]
    
    static let girlsContents = [
        "Cindy" : CindyContents ,
        "Diane": DianeContents,
        "Grace" : GraceContents,
        "Isabel": IsabelContents,
        "Mary" : MaryContents,
        "NastyGirls" :NastyGirlsContents
    ]

    
    // MARK: set of sets
    static let setOfGirlSets: Set<Set<Core>> = [CindyContents, DianeContents, GraceContents,IsabelContents,MaryContents, NastyGirlsContents ]
    
    // MARK: Girl WOD Description
    static let descriptions = [
    
         WOD(name: "Cindy", type: .AMRAP, time: 20, ["5 Pull-ups", "10 Push-ups", "15 Squats"]),
         WOD(name: "Diane", type: .RND(number: 1), time: 9, [
            "21-15-9 Deadlifts (225 lb. / 155 lb.)", "Handstand push-ups",
         "21-15-9 Deadlifts (315 lb. / 205 lb.", "50-ft. handstand walk after each set"]),
         WOD(name: "Grace", type: .RND(number: 1), time: 15, ["30 Clean and Jerk 135 lb."]),
         WOD(name: "Isabel", type: .RND(number: 1), time: 15, ["30 Snatch 95 lb./ 65 lb."]),
         WOD(name: "Mary", type: .AMRAP, time: 20, ["5 Handstand Push-ups", "10 One legged squats (alternating)", "15 Pull-ups"]),
         WOD(name: "NastyGirls", type: .RND(number: 3), time: 25, ["50 Squats", "7 Muscle-ups", "10 Hang power cleans 135 lb."])
    ]

}
