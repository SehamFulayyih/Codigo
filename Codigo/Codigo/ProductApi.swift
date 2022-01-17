//
//  ProductApi.swift
//  Codigo
//
//  Created by Seham الشطنان on 25/05/1443 AH.
//

import Foundation
import FirebaseFirestore
import Firebase
class ProductApi {
    
   
    static func getProduct(uid:String,completion: @escaping (Product) -> Void) {
        
        let refProducts = Firestore.firestore().collection("Product")
        
        refProducts.document(uid).getDocument { document, error in
            if let document = document, document.exists {
                let Product = Product.getProduct(dict: document.data()!)
                completion(Product)
            }
        }
        
    }
}
