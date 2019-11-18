//
//  FilterCollection.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-08-13.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import UIKit

class FilterCollection: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let movements = Core.allCases
    let WODs = ["Girls", "Heros"]
    let model = Model()
    var setOfAggregatedWods: Set<String> = []
    var setOfMovementButtons: Set<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dimissModal))
    }
    
    // set the size of collection view cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width / 2.0) - 7.0
        let height = CGFloat(exactly: 60.0)!
        
        return CGSize(width: width, height: height)
    }
    
    
    // WOD type or workouts
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return self.WODs.count
        }
        return self.movements.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader {
            
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FilterCollectionSectionHeader", for: indexPath) as! FilterCollectionSectionHeaderView
            
            header.label.text = indexPath.section == 0 ? "WODs" : "Movements"
            header.label.font = UIFont.preferredFont(forTextStyle: .title1)
            return header
            
        }
        fatalError("Unexpected element kind")
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "workoutCell", for: indexPath) as? FilterCollectionCell else {
            fatalError("Failed to cast to FilterCollectionCell")
        }
        
        if indexPath.section == 0 {
            cell.workoutButton.setTitle(self.WODs[indexPath.row], for: UIControl.State.normal)
            return cell
        }
        
        cell.workoutButton.setTitle(self.movements[indexPath.row].rawValue, for: UIControl.State.normal)
        
        return cell;
    }
    
    

    // function to return an array of WODs that contain the movement
    fileprivate func findWodsWith(buttonTitle coreMovement: String) -> [String] {
        var arrayOfWods: [String] = []
        if let coreMove = Core(rawValue: coreMovement) {
            for (heroName,content) in Heros.herosContents {
                if content.contains(coreMove) {
                    arrayOfWods.append(heroName)
                }
            }
            
            for (girlName,content) in Girls.girlsContents {
                if content.contains(coreMove) {
                    arrayOfWods.append(girlName)
                }
            }
        }
        return arrayOfWods
    }
    
    // TODO: only execute setDataDictionary when the user clicks done on the filter page
    @IBAction func onButtonTouchup(_ sender: FilterButton) {
        if let buttonTitle = sender.currentTitle {
            let backgroundColor = sender.backgroundColor
            
            switch (buttonTitle, backgroundColor) {
                case ("Girls", UIColor.darkGray):
                    model.setDataDictionary(with: buttonTitle, arrayOfWods: nil)
                case ("Heros", UIColor.darkGray):
                    model.setDataDictionary(with: buttonTitle, arrayOfWods: nil)
                case (buttonTitle, UIColor.darkGray):
                    setOfMovementButtons.insert(buttonTitle)
                    let wods = findWodsWith(buttonTitle: buttonTitle)
                    setOfAggregatedWods = setOfAggregatedWods.union(Set(wods))
                    model.setDataDictionary(with: nil, arrayOfWods: Array(setOfAggregatedWods))
                case (buttonTitle, UIColor.lightGray):
                    setOfAggregatedWods.removeAll()
                    setOfMovementButtons.remove(buttonTitle)
                    for moveTitle in Array(setOfMovementButtons) {
                       setOfAggregatedWods = setOfAggregatedWods.union(Set(findWodsWith(buttonTitle: moveTitle)))
                    }
                    
                    setOfAggregatedWods.count > 0 ?
                        model.setDataDictionary(with: nil, arrayOfWods: Array(setOfAggregatedWods)) :
                        model.setDataDictionary(with: nil, arrayOfWods: nil)
                default:
                    model.setDataDictionary(with: "reset", arrayOfWods: nil)
            }
        }
        self.filterButtonAppearance(sender: sender)
    }
    
    // Func to modify button appearance when clicked on.
    func filterButtonAppearance(sender: FilterButton){
//        sender.layer.borderColor = sender.layer.borderColor == UIColor.black.cgColor ? UIColor.blue.cgColor : UIColor.black.cgColor
        sender.layer.backgroundColor = sender.layer.backgroundColor == UIColor.darkGray.cgColor ? UIColor.lightGray.cgColor : UIColor.darkGray.cgColor
    }
    
    
    @objc func dimissModal(){
        self.dismiss(animated: true)
    }
    
}
