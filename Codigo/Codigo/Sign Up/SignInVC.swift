//
//  ViewController.swift
//  Codigo
//
//  Created by Seham الشطنان on 02/05/1443 AH.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInVC: UIViewController {
     
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    fileprivate func checkUserIsLogin() {
        if Auth.auth().currentUser != nil {
            performSegue(withIdentifier: "Home", sender: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkUserIsLogin()
    }
    func SignIn(email: String,password:String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            
            if error != nil {
                let alert = UIAlertController(title: "Error", message: "Sorry ,we could not find your account.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self?.present(alert, animated : true)
            }else {
                self?.performSegue(withIdentifier: "Home", sender: nil)
                //self!.checkUserInfo()
            }
        
        }
        
    }
    @IBAction func singIn(_ sender: UIButton) {
        SignIn(email: email.text ?? "", password: password.text ?? "")
        
    }
    @IBAction func register(_ sender: UIButton) {
        self.performSegue(withIdentifier: "signUp", sender: nil)
    }
    
}

