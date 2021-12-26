//
//  ProfileVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 22/05/1443 AH.
//

import UIKit

class ProfileVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    
    @IBAction func changeLanguage(_ sender: Any) {
        //showAleartlanguage()
    }
   
    
    @IBAction func theme(_ sender: Any) {

    }
    
    
    @IBAction func doChangeLang(_ sender: Any) {
    }
    
    
    func showAleartlanguage(){
        let alert = UIAlertController(title: "Select the language", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Arabic", style:.default, handler: {action in
            print("Arabic")
        }))
        
        alert.addAction(UIAlertAction(title: "English", style: .cancel, handler: nil))
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        
        
        alert.addAction(UIAlertAction(title: "Confirm", style: .destructive, handler: {action in
            print("Confirm")
    }))
                        
   present(alert, animated: true, completion: nil)
    
  }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected section 0")
        switch indexPath.section {
        case 0:
            print("selected section 0")
        case 1:
            print("selected section 1")
        default:
            print("none selected")
        }
        
    }
    
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

   

}

