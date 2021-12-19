//
//  RegisterChallengesVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 11/05/1443 AH.
//

import UIKit

class RegisterChallengesVC: UIViewController {
    
    @IBOutlet weak var imageChallenges: UIImageView!
    
    // var [current index] : Int
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSelectedLanguage = selectedLanguage
        populateChallenges(setSelectedLanguage: setSelectedLanguage)
        
        
    }
    
    
    // [current index]
    
    
    // Do any additional setup after loading the view.
    
    //}
    
    
    
    func populateChallenges(setSelectedLanguage: Language?){
        
        switch setSelectedLanguage {
        case .swift:
            let challengSwift1 = Challenges(imageChallenges: "", question: "It is possible to write swift codes on windows?", answer: true)
            question.text = challengSwift1.question
            let challengSwift2 = Challenges(imageChallenges: "", question: "Swift is an open source programming language?", answer: true)
            question.text = challengSwift2.question
            let challengSwift3 = Challenges(imageChallenges: "", question: "Swift is programming language that was introduced by Apple?", answer: true)
            question.text = challengSwift3.question
            
            let challengSwift4 = Challenges(imageChallenges: "", question: "When defining more than one variable on the same line, We separate each variable from the other with a + . sign?", answer: false)
            question.text = challengSwift4.question
            let challengSwift5 = Challenges(imageChallenges: "", question: "Commments are used to force the explanation of programming instruction to the programmer ?", answer: true)
            question.text = challengSwift5.question
            let challengSwift6 = Challenges(imageChallenges: "", question: "The data type that has only two possible values Bool?", answer: true)
            question.text = challengSwift6.question
            let challengSwift7 = Challenges(imageChallenges: "", question: "Modulus =! Represents the parameter NotEqual?", answer: true)
            question.text = challengSwift7.question
            let challengSwift8 = Challenges(imageChallenges: "", question: "It is a Swift Language used in recursion?", answer: false)
            question.text = challengSwift8.question
            
            LearnSwift = [challengSwift1, challengSwift2, challengSwift3, challengSwift4, challengSwift5, challengSwift6, challengSwift7, challengSwift8]
            
        case .python:
            let challengPython1 = Challenges(imageChallenges: "", question: "One of the programming libraries that use the python language in the field of data 'tensor Flow, Scikit_Learn'?", answer: true)
            question.text = challengPython1.question
            let challengPython2 = Challenges(imageChallenges: "", question: "The ease of learning python is due to the variety of its libraries?", answer: false)
            question.text = challengPython2.question
            let challengPython3 = Challenges(imageChallenges: "", question: "python was first released in 1991?", answer: true)
            question.text = challengPython3.question
            let challengPython4 = Challenges(imageChallenges: "", question: "One of the application that use the python language YouTube?", answer: false)
            question.text = challengPython4.question
            let challengPython5 = Challenges(imageChallenges: "", question: "Python is one of the languages in data science ?", answer: false)
            question.text = challengPython5.question
            let challengPython6 = Challenges(imageChallenges: "", question: "From the following software frameworks, Python is used in the fields of web development Flask ,Django? ", answer: true)
            question.text = challengPython6.question
            let challengPython7 = Challenges(imageChallenges: "", question: "Python is one of the most popular languages in web development?", answer: false)
            question.text = challengPython7.question
            
            LearnPython = [challengPython1, challengPython2, challengPython3, challengPython4, challengPython5, challengPython6, challengPython7 ]
            
        case .javascript:
            let challengJavascript1 = Challenges(imageChallenges: "", question: "Represents Bollean values in javascript true,false?", answer: true)
            question.text = challengJavascript1.question
            let challengJavascript2 = Challenges(imageChallenges: "", question: "The word continve is used to specify a loop to bypass ?", answer: true)
            question.text = challengJavascript2.question
            let challengJavascript3 = Challenges(imageChallenges: "", question: "The break word in the while loop stops and exits the loop for up to five seconds ?", answer: false)
            question.text = challengJavascript3.question
            let challengJavascript4 = Challenges(imageChallenges: "", question: "Does not accept a condition in javascript else ?", answer: true)
            question.text = challengJavascript4.question
            let challengJavascript5 = Challenges(imageChallenges: "", question: "In java,aconditional statement contains three else if statements and does not contain the default else case . the number of possible states is two ?", answer: false)
            question.text = challengJavascript5.question
            let challengJavascript6 = Challenges(imageChallenges: "", question: "Uses of comments Explain programming commands to the programmer in the javascript language?", answer: true)
            question.text = challengJavascript6.question
            
            
            
            LearnJavascript = [challengJavascript1, challengJavascript2, challengJavascript3, challengJavascript4, challengJavascript5, challengJavascript6 ]
            
        
        
        case .none:
            ""
        }
    }
        
}
        
        
        
      
