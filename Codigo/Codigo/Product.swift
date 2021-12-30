//
//  Product.swift
//  Codigo
//
//  Created by Seham الشطنان on 25/05/1443 AH.
//

import Foundation
import UIKit

class Product {
    
    var name: String? = nil
    var imageName : String? = nil
    var describetion : String? = nil
    var informations : String? = nil
    
}
extension Product {
    
    static func getProduct(dict: [String: Any]) -> Product {
        
        let  Product =  Product ()
        
        Product.describetion  = dict["describetion"] as? String
        Product.informations  = dict["informations"] as? String
        Product.name = dict["name"] as? String
        Product.imageName = dict["imageName"] as? String
        return Product
    }
    
}
