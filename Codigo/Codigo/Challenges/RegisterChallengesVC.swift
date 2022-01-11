//
//  RegisterChallengesVC.swift
//  Codigo
//
//  Created by Seham الشطنان on 11/05/1443 AH.
//

import UIKit
import Firebase

class RegisterChallengesVC: UIViewController {
    var setSectionImageView : UIImageView!
    @IBOutlet weak var imageChallenges: UIImageView!
       
    
    let refUsers = Firestore.firestore().collection("Users")
    
    @IBOutlet weak var progressView: UIView!
    
    
    var currentquestionindex : Int = 0
  
    var selectedLanguage : Language?
    var setSelectedLanguage : Language?
    
    @IBOutlet weak var question: UILabel!
    
    var LearnSwift : [Challenges] = []
    var LearnPython : [Challenges] = []
    var  LearnJavascript  : [Challenges] = []
    var selectedLanguagequestion : [Challenges] = []
    //var checkResults : [Bool] = []
    let ischeckResults = true
    
    @IBAction func trueQl(_ sender: Any) {
    if selectedLanguagequestion[currentquestionindex].answer ==
        true //,
      //   ischeckResults
        {
      //  print("showresults")
            setNextQuestion()
       
        } else {
           
        }
        
    }
    
    
    @IBAction func falseQl(_ sender: Any) {
        if selectedLanguagequestion[currentquestionindex].answer == false {
            setNextQuestion()
        }else{
           
        }
    }
    
    
    func setNextQuestion () {
        
        progressView.frame.size.width = (view.frame.size.width / CGFloat (selectedLanguagequestion.count)) * CGFloat (currentquestionindex + 1)
        
        if   currentquestionindex < selectedLanguagequestion.count-1 {
            currentquestionindex += 1
            question.text = selectedLanguagequestion[currentquestionindex].question

            } else {
            
            let alert = UIAlertController(title: "Congratulation on solving the question", message: nil, preferredStyle: .alert)
            
              alert.addAction(UIAlertAction(title: "Go to the languages you want", style: .default, handler: nil))
             
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
                present(alert, animated: true, completion: nil)
         }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSelectedLanguage = selectedLanguage
        populateChallenges(setSelectedLanguage: setSelectedLanguage)
        print("Auth.auth().currentUser?.uid ??:\(Auth.auth().currentUser?.uid ?? "nil")")
        UserApi.addresults(uid: Auth.auth().currentUser?.uid ?? "", results: ["LearnSwift","LearnJavascript","LearnPython"])
        if  ischeckResults ,((currentquestionindex + 1) != 0) {
            print("showresults[]")
        }else{
            
        }
        
    }
    func populateChallenges(setSelectedLanguage: Language?){
       switch setSelectedLanguage {
        case .swift:
            let challengSwift1 = Challenges(imageChallenges: "image-13", question: "It is possible to write swift codes on windows?", answer: true)
            
           
            let challengSwift2 = Challenges(imageChallenges: "image-13", question: "Swift is an open source programming language?", answer: true)
       
            let challengSwift3 = Challenges(imageChallenges: "image-13", question: "Swift is programming language that was introduced by Apple?", answer: true)
           
            
            let challengSwift4 = Challenges(imageChallenges: "image-13", question: "When defining more than one variable on the same line, We separate each variable from the other with a + . sign?", answer: false)
            
            let challengSwift5 = Challenges(imageChallenges: "image-13", question: "Commments are used to force the explanation of programming instruction to the programmer ?", answer: true)
            
            let challengSwift6 = Challenges(imageChallenges: "image-13", question: "The data type that has only two possible values Bool?", answer: true)
           
            let challengSwift7 = Challenges(imageChallenges: "image-13", question: "Modulus =! Represents the parameter NotEqual?", answer: true)
            
            let challengSwift8 = Challenges(imageChallenges: "image-13", question: "It is a Swift Language used in recursion?", answer: false)
           
            
            LearnSwift = [challengSwift1, challengSwift2, challengSwift3, challengSwift4, challengSwift5, challengSwift6, challengSwift7, challengSwift8]
            selectedLanguagequestion =  LearnSwift
            
        case .javascript:
            let challengJavascript1 = Challenges(imageChallenges: "", question: "Represents Bollean values in javascript true,false?", answer: true)
            
            let challengJavascript2 = Challenges(imageChallenges: "", question: "The word continve is used to specify a loop to bypass ?", answer: true)
            
            let challengJavascript3 = Challenges(imageChallenges: "", question: "The break word in the while loop stops and exits the loop for up to five seconds ?", answer: false)

            let challengJavascript4 = Challenges(imageChallenges: "", question: "Does not accept a condition in javascript else ?", answer: true)
            
            let challengJavascript5 = Challenges(imageChallenges: "", question: "In java,aconditional statement contains three else if statements and does not contain the default else case . the number of possible states is two ?", answer: false)
            
            let challengJavascript6 = Challenges(imageChallenges: "", question: "Uses of comments Explain programming commands to the programmer in the javascript language?", answer: true)
           
            
            LearnJavascript = [challengJavascript1, challengJavascript2, challengJavascript3, challengJavascript4, challengJavascript5, challengJavascript6 ]
            selectedLanguagequestion =  LearnJavascript
        case .python:
            let challengPython1 = Challenges(imageChallenges: "", question: "One of the programming libraries that use the python language in the field of data 'tensor Flow, Scikit_Learn'?", answer: true)
            
            let challengPython2 = Challenges(imageChallenges: "", question: "The ease of learning python is due to the variety of its libraries?", answer: false)
           
            let challengPython3 = Challenges(imageChallenges: "", question: "python was first released in 1991?", answer: true)
            
            let challengPython4 = Challenges(imageChallenges: "", question: "One of the application that use the python language YouTube?", answer: false)
           
            let challengPython5 = Challenges(imageChallenges: "", question: "Python is one of the languages in data science ?", answer: false)
            
            let challengPython6 = Challenges(imageChallenges: "", question: "From the following software frameworks, Python is used in the fields of web development Flask ,Django? ", answer: true)
           
            let challengPython7 = Challenges(imageChallenges: "", question: "Python is one of the most popular languages in web development?", answer: false)
           
            
            LearnPython = [challengPython1, challengPython2, challengPython3, challengPython4, challengPython5, challengPython6, challengPython7 ]
            
            selectedLanguagequestion = LearnPython
            
            
        case .none:
            ""
        }
        
        question.text = selectedLanguagequestion.first?.question
        
    }
    
    
}


