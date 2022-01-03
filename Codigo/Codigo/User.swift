//
//  User.swift
//  Codigo
//
//  Created by Seham الشطنان on 04/05/1443 AH.
//

import Foundation

import UIKit

class User {
    
    var userName:String?
    var passWord: String?
    var email: String?
    var results : [String]?
}
extension User {
    static func getUser(dict: [String: Any]) -> User {
       let user = User()
        user.passWord = dict["passWord"] as? String
        user.userName = dict["userName"] as? String
        user.email = dict["email"] as? String
        user.results = dict["results"] as? [String]
       return user
    }
    static func CreateUser(passWord:String,userName:String,email:String,results:[String]) -> [String: Any] {
       
        let newUser = ["passWord":passWord,
                       "userName":userName,
                       "email" :email,
                       "results" :results
                    ] as [String : Any]
        
        return newUser
    }
    static func addResults(results:[String]) -> [String: Any] {
       
        let results = ["results":results]
     as [String : Any]
        
        return results
    }
}
