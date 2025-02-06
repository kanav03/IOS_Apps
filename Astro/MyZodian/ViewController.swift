//
//  ViewController.swift
//  MyZodian


import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var signsLabel: UILabel!
    
    @IBOutlet weak var UIImageView: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    
    var currentIndex: Int = 1
    var sign:Signs = Signs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        let currentSign=sign.getSign(for: currentIndex)
        signsLabel.text = "\(currentIndex) - \(currentSign)"
        UIImageView.image = UIImage(named: "\(currentIndex)\(currentSign)")
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if(currentIndex < sign.signs.count){
            currentIndex+=1
            if currentIndex == sign.signs.count {
                nextButton.isEnabled=false
            }
            prevButton.isEnabled=true
            updateUI()
        }
      
        
        
    }
    
    @IBAction func previousButtonTapped(_ sender: Any) {
        if currentIndex>1 {
            currentIndex-=1
            
            if currentIndex == 1 {
                prevButton.isEnabled=false
            }
            
            nextButton.isEnabled=true
            updateUI()
        }
        
        
    }
    
    @IBAction func rightSwipe(_ sender: UISwipeGestureRecognizer) {
        previousButtonTapped(sender)
    }
    
    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        nextButtonTapped(sender)
    }
    
   
}

