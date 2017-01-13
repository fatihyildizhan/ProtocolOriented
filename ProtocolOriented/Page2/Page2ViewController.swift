//
//  Page2ViewController.swift
//  ProtocolOriented
//
//  Created by Fatih YILDIZHAN on 13/01/2017.
//  Copyright © 2017 7renk. All rights reserved.
//

import UIKit

protocol Page2ViewControllerDelegate {
    func page2ViewControllerSelect(flower:Flower)
}

class Page2ViewController: UIViewController {
    
    var actionDelegate : Page2ViewControllerDelegate?
  
    @IBOutlet weak var flowersTableView: FlowersTableView!{
        didSet{
            flowersTableView.actionDelegate = self
        }
    }
    
  var flowerList:[Flower] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Page 2"
    
    // Flower Colors
    let colorList:[UIColor] = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.orange, UIColor.black]
    
    // Fill the flower array
    for (index, color) in colorList.enumerated() {
    let flw = Flower(name: "flower: \(index)", color: color)
      flowerList.append(flw)
    }
    
    // TableView's dataSource setted
    flowersTableView.flowers = flowerList
  }  
}

extension Page2ViewController : FlowersTableViewDelegate {
    func flowerDidSelect(flower: Flower) {
        _ = self.navigationController?.popToRootViewController(animated: true)
        self.actionDelegate?.page2ViewControllerSelect(flower: flower)
    }
}




