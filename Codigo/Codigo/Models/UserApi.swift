//
//  UserApi.swift
//  Codigo
//
//  Created by Seham الشطنان on 05/05/1443 AH.
//

import Foundation
import FirebaseFirestore
import Firebase
class UserApi {
    
    static func addUser(name:String,uid:String,passWord:String,email:String,results:[String],completion: @escaping (Bool) -> Void) {
        
        let refUsers = Firestore.firestore().collection("Users")
        
        refUsers.document(uid).setData(User.CreateUser(passWord: passWord, userName: name, email: email, results: results))
        
        completion(true)
      
    }
    
    
    static func addresults(uid:String,results:[String]) {
        
        let refUsers = Firestore.firestore().collection("Users")
        
     
        refUsers.document(uid).setData(User.addResults(results: results),merge: true)
        
    }
    
    
    static func getUser(uid:String,completion: @escaping (User) -> Void) {
       
        let refUsers =  Firestore.firestore().collection("Users")
        refUsers.document(uid).getDocument { document, error in
            if let document = document, document.exists {
                let user = User.getUser(dict: document.data()!)
                completion(user)
            }
        }
        
    }
}
