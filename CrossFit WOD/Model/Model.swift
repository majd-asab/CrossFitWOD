//
//  Model.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-06-11.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import Foundation

class Model {
    // an array of int keys and string values
    private static var dataDictionary: [Int: [String]]  = [
        0: Girls.allGirls,
        1: Heros.allHeros
    ]
    
    // MARK: return new dictionary of filtered data
    func getDataDictionary() -> [Int: [String]] {
        return Model.dataDictionary
    }
    
    // MARK: set dataDictionary
    func setDataDictionary(with: String?, arrayOfWods: [String]?) {
        Model.dataDictionary.removeAll()
        print("cleared:",getDataDictionary())
        
        let arrayAvailable = arrayOfWods == nil ? false : true
        
        switch (with, arrayAvailable) {
            case ("Girls",false):
                Model.dataDictionary[0] = Girls.allGirls
            case ("Heros",false):
                Model.dataDictionary[0] = Heros.allHeros
            case (nil, true):
                Model.dataDictionary[0] = arrayOfWods
            default:
                Model.dataDictionary[0] = Girls.allGirls
                Model.dataDictionary[1] = Heros.allHeros
        }
        print("new data:", getDataDictionary())
    }
    
}
