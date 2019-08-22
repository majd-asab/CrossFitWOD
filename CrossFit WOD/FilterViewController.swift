////
////  FilterViewController.swift
////  CrossFit WOD
////
////  Created by Majd on 2019-05-30.
////  Copyright © 2019 HappyWorld. All rights reserved.
////
//
//import UIKit
//
//class FilterViewController: UIViewController, UIScrollViewDelegate {
//
//
//    var girlButton: UIButton!
//    var heroButton: UIButton!
//    var filtersApplied = 0
//    let model = Model()
//    var scrollView: UIScrollView!
//    var mainStackView: UIStackView!
//
//
//    override func loadView() {
//        self.view = UIView()
//        self.view.backgroundColor = .white
//        self.navigationItem.hidesBackButton = true
//        self.navigationItem.title = "Filter"
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissModal))
//
//        // superview's layout
//        let margin = self.view.layoutMarginsGuide
//
//        // create main stack to hold other stacks
//        mainStackView = UIStackView()
//        mainStackView.axis = .vertical
////        mainStackView.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue)
////        mainStackView.translatesAutoresizingMaskIntoConstraints = false
////        view.addSubview(mainStackView)
//
//
//
//
//        // create a scrollview
//        scrollView = UIScrollView(frame: view.bounds)
//        scrollView.delegate = self
////        scrollView.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue)
//        //        scrollView.translatesAutoresizingMaskIntoConstraints = false
////        scrollView.backgroundColor = UIColor.black
//
//
//        mainStackView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//
//        scrollView.addSubview(mainStackView)
//        view.addSubview(scrollView)
//
//        NSLayoutConstraint.activate([
//            scrollView.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: margin.trailingAnchor),
//            scrollView.topAnchor.constraint(equalTo: margin.topAnchor),
//            scrollView.heightAnchor.constraint(equalTo: margin.heightAnchor),
//
//            mainStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            mainStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            mainStackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            mainStackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
//
//        ])
////        NSLayoutConstraint.activate([
////            scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20)
////            scrollView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
////            scrollView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
////        ])
//
//
//
////        mainStackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
////        mainStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
////        mainStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
////
////        mainStackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        // set the layout constraints
////        NSLayoutConstraint.activate([
////            mainStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
////            mainStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
////            mainStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
////        ])
//
//
//        // set WOD type labels and buttons, create stack and add them
//        let WODTypeLable = UILabel()
//        WODTypeLable.text = "WOD Type"
//        WODTypeLable.font = UIFont.preferredFont(forTextStyle: .title1)
//        mainStackView.addArrangedSubview(WODTypeLable)
//        mainStackView.spacing = 20
//
//        girlButton = FilterButton(title: "Girl")
//        girlButton.addTarget(self, action: #selector(filterGirlsOnly), for: .touchUpInside)
//
//        heroButton = FilterButton(title: "Hero")
//        heroButton.addTarget(self, action: #selector(filterHerosOnly), for: .touchUpInside)
//
//        let WODTypeStack = UIStackView()
//        WODTypeStack.alignment = .center
//        WODTypeStack.distribution = .fillEqually
//        WODTypeStack.spacing = 20
//        WODTypeStack.addArrangedSubview(girlButton)
//        WODTypeStack.addArrangedSubview(heroButton)
//        mainStackView.addArrangedSubview(WODTypeStack)
//
//        let movementLabel = UILabel()
//        movementLabel.text = "Movements"
//        movementLabel.font = UIFont.preferredFont(forTextStyle: .title1)
//        mainStackView.addArrangedSubview(movementLabel)
//
//        let movementStack = UIStackView()
//        movementStack.axis = .vertical
//        movementStack.alignment = .fill
//        movementStack.distribution = .fillEqually
//        movementStack.spacing = 20
//
//        let movements  = Core.allCases
//        var movementCount = 0
//
//        var tempStack = UIStackView()
//        tempStack.distribution = .fillEqually
//        tempStack.spacing = 20
//        var stackCount = 0
//
//        while movementCount < movements.count {
//            let button = FilterButton(title: movements[movementCount].rawValue)
//            tempStack.addArrangedSubview(button)
//
//            if stackCount == 1 || movementCount == movements.count-1 {
//                movementStack.addArrangedSubview(tempStack)
//                stackCount = 0
//                tempStack = UIStackView()
//                tempStack.distribution = .fillEqually
//                tempStack.spacing = 20
//            }else {
//                stackCount = stackCount + 1
//            }
//
//
//            movementCount = movementCount + 1
//        }
//
//        mainStackView.addArrangedSubview(movementStack)
//    }
//
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("scrolling in filter")
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        print("loaded")
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("appeard")
//        // set the scroll view content size once the frame's height has been set
//        self.scrollView.contentSize = CGSize(width: 0, height: view.frame.height)
//    }
//
//
//    @objc func filterGirlsOnly(){
//        model.setDataDictionary(with: "Girls")
//        self.buttonControl(buttonTapped: girlButton, disable: [heroButton])
//    }
//
//    @objc func filterHerosOnly(){
//        model.setDataDictionary(with: "Heros")
//        self.buttonControl(buttonTapped: heroButton,disable: [girlButton])
//    }
//
//    // func to control the enabled/disabled status of buttons and color change
//    // if user clicks on a button, it will set selected to true, and disable listed buttons
//    // if user clicks again on the button, it will deselect it and enable all the other buttons
//    func buttonControl(buttonTapped: UIButton, disable: [UIButton]?) {
//
//        buttonTapped.isSelected = !buttonTapped.isSelected
//
//        if buttonTapped.isSelected {
//            buttonTapped.layer.borderColor = UIColor.blue.cgColor
//            filtersApplied += 1
//        }else {
//            buttonTapped.layer.borderColor = UIColor.black.cgColor
//            filtersApplied -= 1
//        }
//
//        if let buttonsToDisable = disable {
//            for button in buttonsToDisable {
//                button.isEnabled = button.isEnabled ? false : true
//                if !button.isEnabled {
//                    button.setTitleColor(.gray, for: .normal)
//                    button.layer.borderColor = UIColor.gray.cgColor
//                } else {
//                    button.setTitleColor(.black, for: .normal)
//                    button.layer.borderColor = UIColor.black.cgColor
//                }
//            }
//        }
//
//        checkForAppliedFilters()
//    }
//
//    // Func to keep track of any filter applied
//    // if no filter is applied, it resets the dictionary model
//    func checkForAppliedFilters() {
//        if self.filtersApplied == 0 {
//            self.model.setDataDictionary(with: "")
//        }
//    }
//
//
//    @objc func dismissModal(){
//        self.dismiss(animated: true)
//    }
//
////    override func loadView() {
////        view = UIView()
////        view.backgroundColor = .white
////
////        setNavigationBar()
////
////        //create stackview
////        let mainStackView = UIStackView()
////        mainStackView.axis = .vertical
////        mainStackView.translatesAutoresizingMaskIntoConstraints = false
////        view.addSubview(mainStackView)
////
////        NSLayoutConstraint.activate([
////            mainStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
////            mainStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
////            mainStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
////            ])
////    }
////
////    func setNavigationBar(){
////        // create nav bar and add it to view
////        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 96.0))
////        navBar.translatesAutoresizingMaskIntoConstraints = false
////        view.addSubview(navBar)
////
////        // creating navigation item and add it to the navBar
////        let navItem = UINavigationItem(title: "Filter")
////        navItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissModal))
////        navBar.setItems([navItem], animated: false)
////
//////        if #available(iOS 11, *) {
//////            let guide = view.safeAreaLayoutGuide
//////            navBar.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
//////        } else {
////            navBar.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
//////    }
////        navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
////        navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
////        navBar.heightAnchor.constraint(equalToConstant: 600).isActive = true
////
////    }
////
////    @objc func dismissModal() {
////        self.dismiss(animated: true)
////    }
////
//}
