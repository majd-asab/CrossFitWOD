//
//  FilterCollection.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-08-13.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import UIKit

class FilterCollection: UICollectionViewController {
    
    let movements = Core.allCases
    let WODs = ["Girls", "Heros"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dimissModal))
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
    
    @objc func dimissModal(){
        self.dismiss(animated: true)
    }
    
}
