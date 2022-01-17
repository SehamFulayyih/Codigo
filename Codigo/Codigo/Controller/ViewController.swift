//
//  ViewController.swift
//  Codigo
//
//  Created by Seham الشطنان on 09/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeBack: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let TapGesture = UIGestureRecognizer()
        self.homeBack.addGestureRecognizer(TapGesture)
        TapGesture.addTarget(self, action: #selector(tapclick))
}
    @objc func tapclick()
    {
        print("Click Tap Gesture On Screen")
        self.performSegue(withIdentifier: "home", sender: nil)
    }
    
  
    
}

