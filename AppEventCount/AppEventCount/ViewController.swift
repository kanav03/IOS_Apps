//
//  ViewController.swift
//  AppEventCount
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var ConfigCount: UILabel!
    @IBOutlet var DidFinishLaunch: UILabel!
    @IBOutlet var Scenedidenterbg: UILabel!
    @IBOutlet var Scenewillenterfg: UILabel!
    @IBOutlet var scenewillresignactive: UILabel!
    @IBOutlet var SceneDidbecomeactive: UILabel!
    @IBOutlet var willConnecttoLabel: UILabel!
    
    var scenedidenterbgCount: Int = 0
    var scenewillenterfgCount: Int = 0
    var scenewillresignactiveCount: Int = 0
    var sceneDidbecomeactiveCount: Int = 0
    var willConnecttoCount: Int = 0
    
    var appDelegate: AppDelegate!{
        return UIApplication.shared.delegate as? AppDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateview(){
        DidFinishLaunch.text = "\(appDelegate.launchcount)"
        ConfigCount.text = "\(appDelegate.configcount)"
        Scenedidenterbg.text = "\(scenedidenterbgCount)"
        Scenewillenterfg.text = "\(scenewillenterfgCount)"
        SceneDidbecomeactive.text = "\(sceneDidbecomeactiveCount)"
        scenewillresignactive.text = "\(scenewillresignactiveCount)"
        willConnecttoLabel.text = "\(willConnecttoCount)"
    }

}
        
