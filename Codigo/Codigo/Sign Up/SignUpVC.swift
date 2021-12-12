//
//  SignUpVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 03/05/1443 AH.
//

import Foundation
import UIKit
import Firebase

class SingUpVC :UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var passWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    func SignUp(email: String,password:String,userName: String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
           
            print("email:\(String(describing: authResult?.user.email))")
            print("uid:\(String(describing: authResult?.user.uid))")
            
            
            if let error = error {
                let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(alert, animated : true)
            }else {
                UserApi.addUser(name: "Seham", uid: authResult?.user.uid ?? "", phone: "", email: authResult?.user.email ?? "", completion: { singup in
                    if singup {
                        self.performSegue(withIdentifier: "home", sender: nil)
                    }
                })
            }
            
            
        }
    }
    @IBAction func signButton(_ sender: UIButton) {
        
        SignUp(email: email.text ?? "", password: passWord.text  ?? "",userName:userName.text ?? "")
       // self.performSegue(withIdentifier: "singUp", sender: nil)
        
    }
    
}
