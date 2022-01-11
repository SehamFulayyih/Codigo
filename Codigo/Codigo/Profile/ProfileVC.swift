//
//  ProfileVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 22/05/1443 AH.
//

import UIKit
import FirebaseAuth
import WebKit


class ProfileVC: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "User profile"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "SignOut", style: .done, target: Self.self, action: #selector(handleSignOutButtonTapped))
    
    }

    func showAleartTheme() {
        
        let alert = UIAlertController(title: "Go to Setting to change the laguage", message: nil, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Dark", style:.default, handler: {action in
                self.Dark()
        }))
        alert.addAction(UIAlertAction(title: "Light", style:.default, handler: {action in
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
        let alert = UIAlertController(title: "Go to Setting to change the laguage", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style:.default, handler: {action in
            self.changeLan()
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
        
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
        let signOutAction = UIAlertAction(title: "Sign Out", style: .destructive, handler: { (action) in
            do{
                try Auth.auth().signOut()
                let welcomeController = UIViewController()
                let welcomeNavigationController = UINavigationController(rootViewController: welcomeController)
                self.present(welcomeNavigationController, animated: true ,completion: nil)
            }catch let err{
           print("failed to sign out with error",err)
       //       service.showAleart(on:self , style: .alert , title: "sign Out Erre" , message: err.localizedDescription)
            }
        } )
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
    //   service.showAleart(on:self , style: .actionSheet , title: nil , message: nil ,action: [signOutAction, cancelAction] , completion: nil )
    }
}

