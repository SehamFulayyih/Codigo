//
//  RegisterChallengesVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 11/05/1443 AH.
//

import UIKit

class RegisterChallengesVC: UIViewController {
    
    @IBOutlet weak var imageChallenges: UIImageView!
   // imageChallenges.image = UIImage()
    
    var selectedLanguage : Language?
    var setSelectedLanguage : Language?
    @IBOutlet weak var question: UILabel!
    // question.text =
    var LearnSwift : [Challenges] = []
    var LearnPython : [Challenges] = []
   var  LearnJavascript  : [Challenges] = []
    
    @IBAction func trueQl(_ sender: Any) {
    }
    @IBAction func falseQl(_ sender: Any) {
    }
    override func
    viewDidLoad() {
        super.viewDidLoad()
        setSelectedLanguage = selectedLanguage
        populateChallenges()
        // Do any additional setup after loading the view.
    }
    
    
 
    func populateChallenges(){
        let challengSwift1 = Challenges(imageChallenges: "", question: "", answer: false)
        
        let challengSwift2 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengSwift3 = Challenges(imageChallenges: "", question: "", answer: false)
        
        let challengSwift4 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengSwift5 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengSwift6 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengSwift7 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengSwift8 = Challenges(imageChallenges: "", question: "", answer: false)
        
        
        LearnSwift = [challengSwift1, challengSwift2, challengSwift3, challengSwift4, challengSwift5, challengSwift6, challengSwift7, challengSwift8]
        
        
        let challengPython1 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengPython2 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengPython3 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengPython4 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengPython5 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengPython6 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengPython7 = Challenges(imageChallenges: "", question: "", answer: false)
        
        LearnPython = [challengPython1, challengPython2, challengPython3, challengPython4, challengPython5, challengPython6, challengPython7 ]
        
      
        let challengJavascript1 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengJavascript2 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengJavascript3 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengJavascript4 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengJavascript5 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengJavascript6 = Challenges(imageChallenges: "", question: "", answer: false)
        let challengJavascript7 = Challenges(imageChallenges: "", question: "", answer: false)
        
        
        LearnJavascript = [challengJavascript1, challengJavascript2, challengJavascript3, challengJavascript4, challengJavascript5, challengJavascript6, challengJavascript7 ]
    }
    
}
