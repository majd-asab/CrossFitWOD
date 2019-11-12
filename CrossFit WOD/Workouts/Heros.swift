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
    
    
    static let herosContents = [
        "Bert" : BertContents,
        "Erin" : ErinContetnts,
        "Havana" : HavanaContents,
        "Horton" : HortonContents,
        "JBo" : JBoContents,
        "Manion" : ManionContents ,
        "Lumberjack20" : Lumberjack20Contents ,
        "Schmalls" : SchmallsContents ,
        "Tama" : TamaContents,
        "Wade" : WadeContents
    ]
    
    
    
    // MARK: set of sets
    static let setOfHeroSets: Set<Set<Core>> = [BertContents,ErinContetnts,HansenContents,HavanaContents,HortonContents,JBoContents,ManionContents,Lumberjack20Contents,SchmallsContents,TamaContents,WadeContents]
    
    // MARK: Hero WOD Description
    static let descriptions = [
        WOD(name: "Bert", type: .RND(number: 1), time: 30, ["50 burpees", "400-m run", "100 push-ups", "400-m run", "150 walking lunges", "400-m run", "200 squats", "400-m run", "150 walking lunges", "400-m run", "100 push-ups", "400-m run", "50 burpees"]),
        WOD(name: "Erin", type: .RND(number: 5), time: 20, ["15 dumbbell split cleans (40 / 25 lbs.)",
        "21 pull-ups"]),
        WOD(name: "Hansen", type: .RND(number: 5), time: 30, ["30 kettlebell swings (2 / 1.5 p.)",
        "30 burpees",
        "30 GHD sit-ups"]),
        WOD(name: "Havana", type: .AMRAP, time: 25,         ["150 double-unders",
        "50 push-ups",
        "15 power cleans (185 / 125 lb.)"]),
        WOD(name: "Horton", type: .RND(number: 9), time: 20, ["With a partner",
        "9 bar muscle-ups",
        "11 clean and jerks (155 lb.)",
        "50-yard buddy carry"]),
        WOD(name: "JBo", type: .AMRAP, time: 28,["9 overhead squats (115 lb.)",
        "1 legless rope climb from seated","12 bench presses (115 lb.)"]),
        WOD(name: "Manion", type: .RND(number: 7), time: 20, ["Run 400 meters", "29 reps back squate (135 lb.)"]),
        WOD(name: "Lumberjack20", type: .RND(number: 1), time: 30, [
        "20 Deadlifts (275 lb.)", "Run 400m", "20 KB swings (2 p.)", "Run 400m","20 Overhead Squats (115 lb.)", "Run 400m", "20 Burpees", "Run 400m", "20 Pullups (Chest to Bar)", "Run 400m", "20 Box jumps (24\")", "Run 400m","20 DB Squat Cleans (45 lb. each)", "Run 400m"]),
        WOD(name: "Schmalls", type: .RND(number: 2), time: 30,
        ["Single: Run 800 meters", "50 Burpees", "40 Pull-ups", "30 One-legged squats",
        "20 Kettlebell swings, (1.5 p.)", "10 Handstand push-ups","Single: Run 800 meters"]),
        WOD(name: "Tama", type: .RND(number: 1), time: 30,
        [ "800-meter single-arm barbell farmers carry (45/35 lb.)",
        "31 toes-to-bars", "31 push-ups", "31 front squats (95/65 lb.)",
        "400-meter single-arm barbell farmers carry (95/65 lb.)",
        "31 toes-to-bars", "31 push-ups", "31 hang power cleans, (135/95 lb.)",
        "200-meter single-arm barbell farmers carry (135/95 lb.)"]),
        WOD(name: "Wade", type: .RND(number: 4), time: 30,
            [ "Wearing a 20-lb. vest",
        "Single: Run 1,200", "12 strict pull-ups", "9 strict dips","6 strict handstand push-ups","Run 1,200 meters"])
    ]
}
