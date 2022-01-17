//
//  ProfileVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 22/05/1443 AH.
//

import UIKit
import FirebaseAuth
import WebKit
import Firebase


class ProfileVC: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "User profile".localizable
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "SignOut".localizable, style: .done, target: self, action: #selector(handleSignOutButtonTapped))
    
    }

    func showAleartTheme() {
        
        let alert = UIAlertController(title: "Go to Setting to change the laguage".localizable, message: nil, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Dark".localizable, style:.default, handler: {action in
                self.Dark()
        }))
        alert.addAction(UIAlertAction(title: "Light".localizable, style:.default, handler: {action in
                self.light()
        }))
        present(alert, animated: true, completion: nil)
        
    }
    
    func Dark() {
        let windowScene = UIApplication.shared.connectedScenes.first as! UIWindowScene
        let window = windowScene.delegate as! SceneDelegate
        window.window?.overrideUserInterfaceStyle = .dark
        
        overrideUserInterfaceStyle = .dark
    }
    func light() {
        
        let windowScene = UIApplication.shared.connectedScenes.first as! UIWindowScene
        let window = windowScene.delegate as! SceneDelegate
        window.window?.overrideUserInterfaceStyle = .light
        
        overrideUserInterfaceStyle = .light
    }
    func showAleartlanguage(){
        let alert = UIAlertController(title: "Go to Setting to change the laguage".localizable, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay".localizable, style:.default, handler: {action in
            self.changeLan()
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel".localizable, style: .destructive, handler: nil))
        
        
        present(alert, animated: true, completion: nil)
        
    }
    func changeLan() {
        
        
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                print("Settings opened: \(success)") // Prints true
            })}
        
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return 2
        default:
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case 1:
            switch indexPath.row {
            case 0:
                showAleartlanguage()
            case 1:
                showAleartTheme()
            default:
                break
            }
        default:
            print("none selected")
        }
        
    }
    
    @objc func handleSignOutButtonTapped(){
      //  if Auth.auth().currentUser != nil {
       //     performSegue(withIdentifier: "", sender: nil)
      //  }
     //   func viewDidAppear(_ animated: Bool) {
        //    super.viewDidAppear(animated)
         //   handleSignOutButtonTapped()
      //  }
        let alert = UIAlertController(title: "signout".localizable, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay".localizable, style:.default, handler: {action in
            do{
                try Auth.auth().signOut()
                let welcomeController = UIViewController()
                let welcomeNavigationController = UINavigationController(rootViewController: welcomeController)
                self.present(welcomeNavigationController, animated: true ,completion: nil)
            }catch let err{
             print("failed to sign out with error",err)
              
            }
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel".localizable, style: .destructive, handler: nil))
    
        present(alert, animated: true, completion: nil)
    
}
   

}
