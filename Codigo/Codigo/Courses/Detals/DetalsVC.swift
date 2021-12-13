//
//  DetalsVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 09/05/1443 AH.
//

import UIKit

class DetalsVC: UIViewController {

    var selectedSection : section?
    var setSelectedSection : section?

    
    @IBOutlet weak var setSectionImageView: UIImageView!
    
    @IBOutlet weak var sectionTitalLable: UILabel!
    
    @IBOutlet weak var describetion: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setSelectedSection = selectedSection
        self.setSectionImageView.image = UIImage(named: setSelectedSection!.imageName)
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
