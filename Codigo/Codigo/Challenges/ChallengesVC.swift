//
//  ChallengesVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 10/05/1443 AH.
//

import UIKit

enum Language {
case swift
    case python
    case javascript
}

class ChallengesVC: UIViewController {
    
    
    var selectedLanguage: Language?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func learnSwift(_ sender: Any) {
        selectedLanguage = .swift
        performSegue(withIdentifier: "goChallanges", sender: nil)
    }
    @IBAction func learnJavascript(_ sender: Any) {
        selectedLanguage = .javascript
        performSegue(withIdentifier: "goChallanges", sender: nil)
    }
    @IBAction func learnPython(_ sender: Any) {
        selectedLanguage = .python
        performSegue(withIdentifier: "goChallanges", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as? RegisterChallengesVC
        
        vc?.selectedLanguage = selectedLanguage
        
        
    }
}
