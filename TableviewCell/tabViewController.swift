//
//  tabViewController.swift
//  TableviewCell
//
//  Created by Nilu Technologies 1 on 01/11/21.
//

import UIKit

class tabViewController: UITabBarController,UITabBarControllerDelegate{

    
  //  var shapeLayer : CALayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.unselectedItemTintColor = .systemTeal
        self.delegate = self
   //     self.selectedIndex  = 1
     //   setButton()
    }
    
    
    
    

    
//    func shapelayer(){
//        let shapeLayer = CAShapeLayer()
//       // shapeLayer.path = createPath()
//    }

//    func setButton(){
//        let middlebuttom = UIButton(frame: CGRect(x: self.view.bounds.width / 2, y: -26, width: 68, height: 60))
//        middlebuttom.setBackgroundImage(UIImage(named: "plus"), for: .normal)
//       // middlebuttom.layer.shadowOffset = UIColor.darkGray
//        middlebuttom.layer.shadowOpacity = 0.1
//        middlebuttom.layer.shadowOffset = CGSize(width: 4, height: 4)
//        self.tabBar.addSubview(middlebuttom)
//      //  middlebuttom.addTarget(self, action: #selector(), for: .touchUpInside)
//    }
//    

}
