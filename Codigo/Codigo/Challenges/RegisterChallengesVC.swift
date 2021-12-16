//
//  RegisterChallengesVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 11/05/1443 AH.
//

import UIKit

class RegisterChallengesVC: UIViewController {
    
    @IBOutlet weak var imageChallenges: UIImageView!
    
    
    var selectedLanguage : Language?
    var setSelectedLanguage : Language?
    @IBOutlet weak var question: UILabel!
    
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
       // imageChallenges.image =
        //question.text = LearnSwift  [carentindex]
       // [carentindex]
        // Do any additional setup after loading the view.
        
    }

    
 
    func populateChallenges(){
        let challengSwift1 = Challenges(imageChallenges: "", question: "It is possible to write swift codes on windows?", answer: true)
        
        let challengSwift2 = Challenges(imageChallenges: "", question: "Swift is an open source programming language?", answer: true)
        let challengSwift3 = Challenges(imageChallenges: "", question: "Swift is programming language that was introduced by Apple?", answer: true)
        
        let challengSwift4 = Challenges(imageChallenges: "", question: "When defining more than one variable on the same line, We separate each variable from the other with a + . sign?", answer: false)
        let challengSwift5 = Challenges(imageChallenges: "", question: "Commments are used to force the explanation of programming instruction to the programmer ?", answer: true)
        let challengSwift6 = Challenges(imageChallenges: "", question: "The data type that has only two possible values Bool?", answer: true)
        let challengSwift7 = Challenges(imageChallenges: "", question: "Modulus =! Represents the parameter NotEqual?", answer: true)
        let challengSwift8 = Challenges(imageChallenges: "", question: "It is a Swift Language used in recursion?", answer: false)
        
        
        LearnSwift = [challengSwift1, challengSwift2, challengSwift3, challengSwift4, challengSwift5, challengSwift6, challengSwift7, challengSwift8]
        
        
        let challengPython1 = Challenges(imageChallenges: "", question: "One of the programming libraries that use the python language in the field of data 'tensor Flow, Scikit_Learn'?", answer: true)
        let challengPython2 = Challenges(imageChallenges: "", question: "The ease of learning python is due to the variety of its libraries?", answer: false)
        let challengPython3 = Challenges(imageChallenges: "", question: "python was first released in 1991?", answer: true)
        let challengPython4 = Challenges(imageChallenges: "", question: "One of the application that use the python language YouTube?", answer: false)
        let challengPython5 = Challenges(imageChallenges: "", question: "Python is one of the languages in data science ?", answer: false)
        let challengPython6 = Challenges(imageChallenges: "", question: "From the following software frameworks, Python is used in the fields of web development Flask ,Django? ", answer: true)
        let challengPython7 = Challenges(imageChallenges: "", question: "Python is one of the most popular languages in web development?", answer: false)
        
        LearnPython = [challengPython1, challengPython2, challengPython3, challengPython4, challengPython5, challengPython6, challengPython7 ]
        
      
        let challengJavascript1 = Challenges(imageChallenges: "", question: "Represents Bollean values in javascript true,false?", answer: true)
        let challengJavascript2 = Challenges(imageChallenges: "", question: "The word continve is used to specify a loop to bypass ?", answer: true)
        let challengJavascript3 = Challenges(imageChallenges: "", question: "The break word in the while loop stops and exits the loop for up to five seconds ?", answer: false)
        let challengJavascript4 = Challenges(imageChallenges: "", question: "Does not accept a condition in javascript else ?", answer: true)
        let challengJavascript5 = Challenges(imageChallenges: "", question: "In java,aconditional statement contains three else if statements and does not contain the default else case . the number of possible states is two ?", answer: false)
        let challengJavascript6 = Challenges(imageChallenges: "", question: "Uses of comments Explain programming commands to the programmer in the javascript language?", answer: true)
       
        
        
        LearnJavascript = [challengJavascript1, challengJavascript2, challengJavascript3, challengJavascript4, challengJavascript5, challengJavascript6 ]
    }
    
}