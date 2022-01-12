//
//  ViewController.swift
//  Codigo
//
//  Created by Seham الشطنان on 09/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let TapGesture = UIGestureRecognizer()
        self.view.addGestureRecognizer(TapGesture)
        TapGesture.addTarget(self, action: #selector(tapclick))
}
    @objc func tapclick()
    {
        print("Click Tap Gesture On Screen")
    }
    @IBAction func clicktapgestureimage(_ sender: Any) {
        print("Click Image Tap Gesture Successfully")
    }
    
}
