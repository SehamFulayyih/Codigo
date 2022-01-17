//
//  SectionViewController.swift
//  Codigo
//
//  Created by Seham الشطنان on 07/05/1443 AH.
//

import UIKit
class SectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    var sections : [Section] = []
    var selectedSection: Section?
    
    @IBOutlet weak var sectionCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionCollectionView.delegate = self
        sectionCollectionView.dataSource = self
        
        
        // Do any additional setup after loading the view.
        
        let swiftSection = Section (name: "swift".localizable, Products: "", imageName: "image-13", describetion: "is friendly to new programmers.It's an industrial-quality programming language that's as expresssive and enjoyable as a scripting language.".localizable, secondImage: "image-10", informations:[Information(titaleLabel: "Output".localizable, imageName: "Output.imagejpg"),Information(titaleLabel: "Variable".localizable, imageName: "Variable.imagejpg"),Information(titaleLabel: "ForLoop".localizable, imageName: "Loopimage"),Information(titaleLabel: "Boolean".localizable, imageName: "Booleanimage"),Information(titaleLabel: "ConditionalStatement".localizable, imageName: "Conditionalimage"),Information(titaleLabel: "Dictionarie".localizable, imageName: "Dictionnariimage"),Information(titaleLabel: "Array".localizable, imageName: "ListorArrayimage")])
        
        let  javascriptSection = Section (name: "javascript".localizable , Products: "", imageName: "image-12", describetion: "is the world's most popular programming language with first-class functions.".localizable, secondImage: "image-9", informations:[Information(titaleLabel: "Output".localizable, imageName: "Output.imagejpg"),Information(titaleLabel: "Variable".localizable, imageName: "Variable.imagejpg"),Information(titaleLabel: "ForLoop".localizable, imageName: "Loopimage"),Information(titaleLabel: "Boolean".localizable, imageName: "Booleanimage"),Information(titaleLabel: "ConditionalStatement".localizable, imageName: "Conditionalimage"),Information(titaleLabel: "Array".localizable, imageName: "ListorArrayimage")] )
        
        let pythonSection = Section (name: "python".localizable, Products: "", imageName: "image-14", describetion: "is the most wanted language.Python's simple easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance.".localizable, secondImage: "image-11", informations: [Information(titaleLabel: "Output".localizable, imageName: "Output.imagejpg"),Information(titaleLabel: "Variable".localizable, imageName: "Variable.imagejpg"),Information(titaleLabel: "ForLoop".localizable, imageName: "Loopimage"),Information(titaleLabel: "List".localizable, imageName: "ListorArrayimage"),Information(titaleLabel: "Dictionarie".localizable, imageName: "Dictionnariimage"),Information(titaleLabel: "Boolean".localizable, imageName: "Booleanimage"),Information(titaleLabel: "ConditionalStatement".localizable, imageName: "Conditionalimage")])
        
        sections.append(swiftSection)
        sections.append(javascriptSection)
        sections.append(pythonSection)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //if sectionCollectionView == collectionView {
            return sections.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionCell", for: indexPath) as!
        SectionViewControllerCell
        
        cell.sectionimageView.image = UIImage(named:  sections[indexPath.row].imageName)
        
        return cell
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? DetalsVC
        vc?.selectedSection  = self.selectedSection
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedSection = sections[indexPath.row]
        performSegue(withIdentifier: "toDetals", sender: nil)
    }
    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath: IndexPath)-> CGSize {
        return CGSize(width: view.bounds.width, height: view.bounds.width/3)
    }
    
    
}


