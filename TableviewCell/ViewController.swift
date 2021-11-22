//
//  ViewController.swift
//  TableviewCell
//
//  Created by Nilu Technologies 1 on 29/10/21.
//

import UIKit

class ViewController: UIViewController {
    var dict : [String: String] = ["name" : "hemangi", "dfdsf" :"xyz"]
    var arr: [String] = ["dfdg","ffg","eref"]
    var animal = ["pqr","abc","xyz","jdf","erf"]
    var an = ["rrg","grtg","rgtrg","gtgt"]
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }


}

class tablecell1: UITableViewCell {
    
    @IBOutlet var lblcell1: UILabel!
}


class tablecell2: UITableViewCell {
    
    @IBOutlet var lblcell2: UILabel!
}
 
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section % 2 == 0{
            let cell:tablecell1 = tableView.dequeueReusableCell(withIdentifier: "tablecell1", for: indexPath as IndexPath) as! tablecell1
            cell.lblcell1.text = animal[indexPath.row]
            cell.backgroundColor = .systemTeal
            return cell
        }else{
            let cellTask:tablecell2 = tableView.dequeueReusableCell(withIdentifier: "tablecell2", for: indexPath as IndexPath) as! tablecell2
            cellTask.lblcell2.text = an[indexPath.row]
            cellTask.backgroundColor = .systemGray
            return cellTask
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return animal.count
        }
        else{
            return an.count
        }
       
    }
       
    }
    
    

