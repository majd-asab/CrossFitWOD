//
//  ViewController.swift
//  CrossFit WOD
//
//  Created by Majd on 2019-05-25.
//  Copyright © 2019 HappyWorld. All rights reserved.
//

import UIKit

class MainView: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tblView: UITableView!
    var dataDictionary = Model().getDataDictionary()
//    let filterVC = UINavigationController(rootViewController: FilterViewController())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tblView.delegate = self
        self.tblView.dataSource = self
        
        self.navigationItem.title = "WODs"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(presentFilterVC))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(presentFilterCollection))
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // refresh view when it appears in case user updated filter
        
        dataDictionary = Model().getDataDictionary()
        self.tblView.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return dataDictionary.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // return number of rows of each item in dic
        if dataDictionary.count == 2 {
            if section == 0 {
                return dataDictionary[0]?.count ?? 0
            }
            return dataDictionary[1]?.count ?? 0
        }else {
           return dataDictionary[0]?.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        // if dic has 2 items , set header both based on section, else set generic title
        if dataDictionary.count == 2 {
            if section == 0 {
                return "Girls"
            }
            return "Heros"
        }else {
            return "Results"
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // if dic has 2 items, then load boths girls and heros, else load whats available
        let cell = self.tblView.dequeueReusableCell(withIdentifier: "WODcell")!
        if dataDictionary.count == 2 {
            if indexPath.section == 0 {
                cell.textLabel?.text = Girls.allGirls[indexPath.row]
            }else {
                cell.textLabel?.text = Heros.allHeros[indexPath.row]
            }
        }else {
            cell.textLabel?.text = dataDictionary[0]?[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // instaniate View controller
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WODDetailViewController") as! WODDetailViewController
        var name = ""
        
        if dataDictionary.count == 2 {
            if indexPath.section == 0 {
                // name cant have any spaces so must filter out spaces in names first
                name = dataDictionary[0]?[indexPath.row].filter{ wod -> Bool in wod != " "} ?? ""
                vc.WOD = Girls.descriptions[name]
            }else {
                name = dataDictionary[1]?[indexPath.row].filter{$0 != " "} ?? ""
                vc.WOD = Heros.descriptions[name]
            }
        } else {
            name = dataDictionary[0]?[indexPath.row].filter{$0 != " "} ?? ""
            if let wod = Girls.descriptions[name] {
                vc.WOD = wod
            } else {
                vc.WOD = Heros.descriptions[name]
            }
        }
      
        
        
        // set the header to wod name
        vc.navigationItem.title = name
        
        // push the vc
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
//    @objc func presentFilterVC() {
//        self.present(self.filterVC, animated: true)
// 
//    }
    
    @objc func presentFilterCollection() {
        guard let collectionVC = self.storyboard?.instantiateViewController(withIdentifier: "filterCollection") as? FilterCollection else {
            fatalError("Could not cast storyboard VC to FilterCollection type")
        }
        let navController = UINavigationController(rootViewController: collectionVC)
        self.present(navController, animated: true)
    }

}

