//
//  collectionView.swift
//  TableviewCell
//
//  Created by Nilu Technologies 1 on 29/10/21.
//

import UIKit

class collectionView: UIViewController {
 //   var animal = ["pqr","abc","xyz","jdf","erf"]
//    var arrimg:[[UIImage:String]] = [[#imageLiteral(resourceName: "images (1)") : "pqr"],[#imageLiteral(resourceName: "images (3)") : "Abc"],[#imageLiteral(resourceName: "images (2)") : "abc"],[#imageLiteral(resourceName: "images (1)") : "pqr"],[#imageLiteral(resourceName: "images (3)") : "Abc"],[#imageLiteral(resourceName: "images (2)") : "abc"]]
    var arrimg1:[[String:Any]] = [["img":#imageLiteral(resourceName: "images (2)"),"Name":""],["img":"","Name":"abvc"],["img":#imageLiteral(resourceName: "images (1)"),"Name":""],["img":"","Name":"mcs"],["img":#imageLiteral(resourceName: "images (3)"),"Name":""],["img":"","Name":"erf"],["img":#imageLiteral(resourceName: "images (1)"),"Name":""],["img":#imageLiteral(resourceName: "images (1)"),"Name":"wedw"]]

@IBOutlet var collectView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

}
class collectcell1: UICollectionViewCell {
    
    @IBOutlet var imgcollec: UIImageView!
    
}
class collectcell2: UICollectionViewCell {
    
    @IBOutlet var lblcollect: UILabel!
}

extension collectionView : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrimg1.count
       
    }
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
//
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row % 2 == 0{
            let cell:collectcell1 = collectView.dequeueReusableCell(withReuseIdentifier: "collectcell1", for: indexPath as IndexPath) as! collectcell1
            cell.imgcollec.image = arrimg1[indexPath.row]["img"] as? UIImage
            cell.backgroundColor = .darkGray

            return cell
        }else{
            let cellTask:collectcell2 = collectView.dequeueReusableCell(withReuseIdentifier: "collectcell2", for: indexPath as IndexPath) as! collectcell2
            cellTask.lblcollect.text = arrimg1[indexPath.item]["Name"] as? String
            cellTask.backgroundColor = .systemBlue
            return cellTask
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectView.frame.width - 20
        
        return CGSize(width:width/2, height: width/2)
    }
    
}

