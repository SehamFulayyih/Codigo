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
        Animations()
    }

    fileprivate func Animations() {
     UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
    self.setSectionImageView.transform = CGAffineTransform(rotationAngle: 120)
} completion: { _ in
    UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
        self.setSectionImageView.alpha = 0
    } completion: { _ in
        
    }
    UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
   self.sectionTitalLable.transform = CGAffineTransform(rotationAngle: 120)
} completion: { _ in
   UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
       self.sectionTitalLable.alpha = 0
   } completion: { _ in
       
   }
}
    UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
   self.describetion.transform = CGAffineTransform(rotationAngle: 120)
} completion: { _ in
   UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
       self.describetion.alpha = 0
   } completion: { _ in
       
   }
}
}
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
