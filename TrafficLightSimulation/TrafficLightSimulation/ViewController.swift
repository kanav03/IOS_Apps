//
//  ViewController.swift
//  TrafficLightSimulation
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTextField: UITextField!
    
    @IBOutlet var redSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pushToYellow(_ sender: Any) {
        if redSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func pushToGreen(_ sender: Any) {
        if redSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
    
}

