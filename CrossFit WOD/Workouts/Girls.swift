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
    
    // MARK: set of sets
    static let setOfGirlSets: Set<Set<Core>> = [CindyContents, DianeContents, GraceContents,IsabelContents,MaryContents, NastyGirlsContents ]
    
    // MARK: Girl WOD Description
    static let descriptions = [
    
    "Cindy" : """
        Complete as many rounds in 20 minutes as you can of:
        5 Pull-ups
        10 Push-ups
        15 Squats
        """,
    "Diane" : """
        21-15-9 reps of:
        Deadlifts, 225 lb. / 155 lb.
        Handstand push-ups
        Then,
        21-15-9 reps of:
        Deadlifts, 315 lb. / 205 lb.
        50-ft. handstand walk after each set

        Time cap: 9 minutes
        """,
    "Grace" : """
        135 pound Clean and Jerk, 30 reps
        """,
    "Isabel" : """
        For time:
        Snatch 135 pounds, 30 reps

        Use 95 pounds, 65 pounds or broomstick as needed.
        """,
    "Mary" : """
        Complete as many rounds in 20 minutes as you can of:
        5 Handstand Push-ups
        10 One legged squats, alternating
        15 Pull-ups
        """,
    
    "NastyGirls" : """
        3 rounds for time of:
        50 Squats
        7 Muscle-ups
        135 pound Hang power cleans, 10 reps
        """
    ]

}
