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
        
        // Do any additional setup after loading the view.
    }
    

}

extension DetalsVC : UICollectionViewDelegate,UICollectionViewDataSource {
    private func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    func sectionCollectionView.delegate = self
    sectionCollectionView.dataSource = self
    
    
    private func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? <#type#>
        
        
        
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return selectedSectionInfo?.count ?? 0
        
    }
}
