//
//  TableViewController.swift
//  Codigo
//
//  Created by Seham الشطنان on 09/05/1443 AH.
//

import UIKit
import FirebaseFirestore

class TableViewController: UITableViewController {
    
    //  var populateChallenges = [populateChallenges]
    var selctedId : String?
    var setselctedId : String?
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        setselctedId = selctedId
        guard let setselctedId = setselctedId else {
            return }
        
     // UserApi.getUser(uid: <#T##String#>, completion: <#T##(User) -> Void#>)
         
        
            
        //      Api.UsergetpopulateChallenges (id :setselctedId) {  populateChallenges in
        //       print (populateChallenges)
        DispatchQueue.main.async {
            //           self.populateChallenges.append(populateChallenges)
            self.tableView.reloadData()
        }  }
}
//    override func tableView(_ _tableView: UITableView, numberOfRowsInSection  section : Int) ->Int {
//      return  populateChallenges.count


func setSelectedLanguage() {
    
}
//  override func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath) as TableViewcellpopulateChallenges
//       guard let url = URL(string: populateChallenges[indexPath.row].imageChallenges ?? "" } else {return UITableViewCell() }
//                       if let data = try ? Data (contentsOf: url) {
//          cell.imageChallenges.image = UIImage(data :data)

//        cell.name.text =  populateChallenges[indexPath.raw].name
//                                   return cell
//    }

//  func  tableView(_tableView:UITableView , didSelectRowAt:indexPath,:IndexPath ) {
//  performSegue(withIdentifier: " ToCell", sender: nil)
//     }
func prepare (for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ToCell" {
    }
    
}

//     }

