//
//  SectionViewController.swift
//  Codigo
//
//  Created by Seham الشطنان on 07/05/1443 AH.
//

import UIKit
class SectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,
                             UICollectionViewDelegateFlowLayout{
    
    
    var sections : [section] = []
    var selectedSection: section?
    @IBOutlet weak var sectionCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionCollectionView.delegate = self
        sectionCollectionView.dataSource = self
    // Do any additional setup after loading the view.
        
        let swiftSection = section (name: "swift", User: "", imageName: "image-13", description: "is friendly to new programmers.It's an industrial-quality programming language that's as expresssive and enjoyable as a scripting language.", informations: "image-10")
        let  javascriptSection = section (name: "javascript" , User: "", imageName: "image-12", description: "is the world's most popular programming language with first-class functions.", informations: "image-9" )
        let pythonSection = section (name: "python", User: "", imageName: "image-14", description: "is the most wanted language.Python's simple easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance.", informations: "image-11")
        
        sections.append(swiftSection)
        sections.append(javascriptSection)
        sections.append(pythonSection)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionCell", for: indexPath) as!
        SectionViewControllerCell
        
        cell.sectionimageView.image = UIImage(named:  sections[indexPath.row].imageName)
        
        return cell
    
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? SectionViewController
        vc?.selectedSection  = self.selectedSection
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedSection = sections[indexPath.row]
    }
    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath: IndexPath)-> CGSize {
            return CGSize(width: view.bounds.width, height: view.bounds.width/3)
        }
    
    
}


