//
//  ThemeVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 22/05/1443 AH.
//

import UIKit

class ThemeVC: UIViewController {
    

    @IBAction func cgangeDarkMood(_ sender: Any) {
        
        let windowScene = UIApplication.shared.connectedScenes.first as! UIWindowScene
        let window = windowScene.delegate as! SceneDelegate
        window.window?.overrideUserInterfaceStyle = .dark
        
        overrideUserInterfaceStyle = .dark
    }
    @IBAction func cgangeLightMood(_ sender: Any) {
        
        let windowScene = UIApplication.shared.connectedScenes.first as! UIWindowScene
        let window = windowScene.delegate as! SceneDelegate
        window.window?.overrideUserInterfaceStyle = .light
        
         overrideUserInterfaceStyle = .light
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
          
       
    }
}

