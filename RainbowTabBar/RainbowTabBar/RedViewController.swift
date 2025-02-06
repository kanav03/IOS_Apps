//
//  ViewController.swift
//  RainbowTabBar


import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "10"
        tabBarItem.badgeColor = .blue
    }
    override func viewWillDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }


}

