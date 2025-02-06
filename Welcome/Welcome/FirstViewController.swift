//
//  ViewController.swift
//  Welcome


import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var numTwoTextField: UITextField!
    @IBOutlet weak var numOneTextField: UITextField!
    
    var result:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusBtnAction(_ sender: UIButton) {
        result = Int(numOneTextField.text!)! + Int(numTwoTextField.text!)!
    }
    
    @IBAction func mulBtnAction(_ sender: UIButton) {
        result = Int(numOneTextField.text!)! * Int(numTwoTextField.text!)!
    }
    @IBAction func minusBtnAction(_ sender: UIButton) {
        result = Int(numOneTextField.text!)! - Int(numTwoTextField.text!)!
    }
    @IBAction func divBtnAction(_ sender: UIButton) {
        result = Int(numOneTextField.text!)! / Int(numTwoTextField.text!)!
    }
    @IBAction func showResultBtnAction(_ sender: UIButton) {
        resultLabel.text = "\(result)"
    }
}


