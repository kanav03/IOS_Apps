//
//  ViewController.swift
//  LoginSegue
import UIKit

class ViewController: UIViewController {

    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userNameTextField.text
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }else{
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }

    @IBAction func forgotUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ViewControllerSegue", sender: sender)
    }
    @IBAction func fogotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ViewControllerSegue", sender: sender)
    }
}

