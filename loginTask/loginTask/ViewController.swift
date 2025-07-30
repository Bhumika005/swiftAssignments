//
//  ViewController.swift
//  loginTask
//
//  Created by Student on 21/07/25.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var Username: UITextField!
    
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "forgetUsernameOrPassword", sender: sender)
    }
    
    
    
    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "forgetUsernameOrPassword", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton
        else{ return }
        if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsername{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else{
            segue.destination.navigationItem.title = Username.text
        }
    }
    
       
}

