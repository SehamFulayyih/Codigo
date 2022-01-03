//
//  UserApi.swift
//  Codigo
//
//  Created by Seham الشطنان on 05/05/1443 AH.
//

import Foundation
import FirebaseFirestore

class UserApi {
    
    static func addUser(name:String,uid:String,phone:String,email:String,results:[String],completion: @escaping (Bool) -> Void) {
        
        let refUsers = Firestore.firestore().collection("Users")
        
        refUsers.document(uid).setData(User.CreateUser(passWord: phone, userName: name, email: email, results: results))
        
        completion(true)
       // let refUsers = Firestore.firestore().RegisterChallengesVC("Users")
    }
    
    
    static func addresults(uid:String,results:[String],completion: @escaping (Bool) -> Void) {
        
        let refUsers = Firestore.firestore().collection("Users")
        
      //  let refUsers = Firestore.firestore().RegisterChallengesVC("Users")
        
        refUsers.document(uid).setData(User.addResults(results: results),merge: true)
        
        completion(true)
        
    }
    
    
    static func getUser(uid:String,completion: @escaping (User) -> Void) {
       
        let refUsers = Firestore.firestore().collection("Users")
   
        refUsers.document(uid).getDocument { document, error in
            if let document = document, document.exists {
                let user = User.getUser(dict: document.data()!)
                completion(user)
            }
        }
        
    }
}
