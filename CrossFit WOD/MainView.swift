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
    var navController: UINavigationController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tblView.delegate = self
        self.tblView.dataSource = self
        
        self.navigationItem.title = "WODs"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.backgroundColor = .groupTableViewBackground

        
        // placed this method logic here to save the state of the VC to the reference right away
        guard let collectionVC = self.storyboard?.instantiateViewController(withIdentifier: "filterCollection") as? FilterCollection else {
            fatalError("Could not cast storyboard VC to FilterCollection type")
        }
        
        navController = UINavigationController(rootViewController: collectionVC)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(presentFilterCollection))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // reload data in case user updated filter
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
        
        if dataDictionary.count == 2 {
            if indexPath.section == 0 {
                vc.navigationItem.title = Girls.descriptions[indexPath.row].name
                vc.wodGroup = Girls.descriptions[indexPath.row]
            }else {
                vc.navigationItem.title = Heros.descriptions[indexPath.row].name
                vc.wodGroup = Heros.descriptions[indexPath.row]
            }
        } else {
            //1. get aggregated data from 0th index
            //2. get the row user pressed cell
            //3. check if the wod name is a girl or hero wod
            //4. match the wod name
            if let name = dataDictionary[0]?[indexPath.row] {
                var wod: WOD? = nil
                if Girls.girlsContents[name] != nil {
                    wod = Girls.descriptions.filter({ (wod) -> Bool in
                        wod.name == name
                        })[0]
                } else {
                    wod = Heros.descriptions.filter({ (wod) -> Bool in
                        wod.name == name
                        })[0]
                }
                
                vc.navigationItem.title = wod?.name
                vc.wodGroup = wod
            }
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func presentFilterCollection() {
        navController.modalPresentationStyle = .fullScreen
        self.present(navController, animated: true)
    }
}


