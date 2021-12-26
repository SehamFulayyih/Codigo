//
//  LanguageVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 22/05/1443 AH.
//

import UIKit

class LanguageVC: UIViewController {

    @IBAction func changeTheLanguage(_ sender: Any) {
        
                guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
                    return
                }
        
        
        if UIApplication.shared.canOpenURL(settingsUrl) {
                   UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                       print("Settings opened: \(success)") // Prints true
                   })}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}

