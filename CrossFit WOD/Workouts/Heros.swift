//
//  Heros.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-05-26.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import Foundation

struct Heros {
    
    // MARK: All Heros
    static let allHeros = ["Bert", "Erin", "Hansen", "Havana", "Horton", "JBo", "Manion", "Lumberjack 20", "Schmalls", "Tama", "Wade"]
    
    // MARK: Sets of Hero contents
    static let BertContents: Set<Core> = [.burpee, .run, .pushup, .lunge, .airSquat]
    static let ErinContetnts: Set<Core> = [.dumbellSplitClean, .pullUp]
    static let HansenContents: Set<Core> = [.kettlebellSwing, .ghdSitUp, .burpee]
    static let HavanaContents: Set<Core> = [.doubleUnders, .powerClean, .pushup]
    static let HortonContents: Set<Core> = [.muscleup, .cleanAndJerk, .buddyCarry]
    static let JBoContents: Set<Core> = [.overheadSquate, .leglessRopeClimb, .benchPress]
    static let ManionContents: Set<Core> = [.run, .backSquat]
    static let Lumberjack20Contents: Set<Core> = [.deadlift, .run, .kettlebellSwing, .overheadSquate, .burpee, .pullUp, .boxJump, .dumbellSquatClean]
    static let SchmallsContents: Set<Core> = [.run, .burpee, .pullUp, .kettlebellSwing, .handStandPushUp, .pistol ]
    static let TamaContents: Set<Core> = [.singleArmFarmersWalk, .toesToBar, .pushup, .frontSquat, .hangPowerClean]
    static let WadeContents: Set<Core> = [Core.run, Core.strictPullUp, Core.strictHandstandPushUp, Core.dip]
    
    
    // MARK: set of sets
    static let setOfHeroSets: Set<Set<Core>> = [BertContents,ErinContetnts,HansenContents,HavanaContents,HortonContents,JBoContents,ManionContents,Lumberjack20Contents,SchmallsContents,TamaContents,WadeContents]
    
    // MARK: Descriptions
    static let descriptions =  [
    "Bert" : """
        For time:
        50 burpees
        400-m run
        100 push-ups
        400-m run
        150 walking lunges
        400-m run
        200 squats
        400-m run
        150 walking lunges
        400-m run
        100 push-ups
        400-m run
        50 burpees
        """,
    
    "Erin" : """
        5 rounds for time of:
        15 dumbbell split cleans
        21 pull-ups

        Men: 40-lb. dumbbells
        Women: 25-lb. dumbbells
        """,
    "Hansen" : """
        5 rounds for time of:
        30 kettlebell swings
        30 burpees
        30 GHD sit-ups

        Men: 2-pood kettlebell
        Women: 1.5-pood kettlebell
        """,
    "Havana" : """
        Complete as many rounds as possible in 25 minutes of:
        150 double-unders
        50 push-ups
        15 power cleans

        Men: 185 lb.
        Women: 125 lb.
        """,
    "Horton" : """
        9 rounds for time with a partner of:
        9 bar muscle-ups
        11 clean and jerks, 155 lb.
        50-yard buddy carry
        """,
    "JBo" : """
        Complete as many rounds as possible in 28 minutes of:
        9 overhead squats
        1 legless rope climb from seated
        12 bench presses

        Men: 115-lb. OHS and bench, 15-ft. rope
        Women: 75-lb. OHS and bench, 15-ft. rope
        """,
    "Manion" : """
        Seven rounds for time of:
        Run 400 meters
        135 pound Back squat, 29 reps
        """,
    "Lumberjack20" : """
        20 Deadlifts (275lbs)
        Run 400m
        20 KB swings (2pood)
        Run 400m
        20 Overhead Squats (115lbs)
        Run 400m
        20 Burpees
        Run 400m
        20 Pullups (Chest to Bar)
        Run 400m
        20 Box jumps (24")
        Run 400m
        20 DB Squat Cleans (45lbs each)
        Run 400m
        """,
    "Schmalls" : """
        Run 800 meters
        Then two rounds of:
        50 Burpees
        40 Pull-ups
        30 One-legged squats
        20 Kettlebell swings, 1.5 pood
        10 Handstand push-ups
        Then,
        Run 800 meters
        """,
    "Tama" : """
        For time:
        800-meter single-arm barbell farmers carry, 45/35 lb.
        31 toes-to-bars
        31 push-ups
        31 front squats, 95/65 lb.
        400-meter single-arm barbell farmers carry, 95/65 lb.
        31 toes-to-bars
        31 push-ups
        31 hang power cleans, 135/95 lb.
        200-meter single-arm barbell farmers carry, 135/95 lb.
        """,
    "Wade" : """
        For time, wearing a 20-lb. vest or body armor:
        Run 1,200 meters
        Then, 4 rounds of:
        12 strict pull-ups
        9 strict dips
        6 strict handstand push-ups
        Then, run 1,200 meters
        """
    ]
}
