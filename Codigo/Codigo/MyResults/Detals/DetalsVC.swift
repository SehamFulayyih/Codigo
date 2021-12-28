//
//  DetalsVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 09/05/1443 AH.
//

import UIKit

class DetalsVC: UIViewController {

    var selectedSection : Section!

    
    @IBOutlet weak var setSectionImageView: UIImageView!
    
    @IBOutlet weak var sectionTitalLable: UILabel!
    
    @IBOutlet weak var describetion: UILabel!
    

    @IBOutlet weak var information: UICollectionView!
    
    var selectedSectionInfo: [Information]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.setSectionImageView.image = UIImage(named: selectedSection.secondImage)
        
        sectionTitalLable.text = selectedSection.name
        describetion.text = selectedSection.describetion
        selectedSectionInfo = selectedSection.informations
        
        information.delegate = self
        information.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}

extension DetalsVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedSection.informations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "informationCell", for: indexPath) as! InformationCollectionViewCell
        
        cell.imageName.image = UIImage(named: selectedSection.informations[indexPath.row].imageName)
        cell.titaleLabel.text = selectedSection.informations[indexPath.row].titaleLabel
    
        return cell
    }
    
    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath: IndexPath)-> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    
}
