//
//  Page1ViewController.swift
//  ProtocolOriented
//
//  Created by Fatih YILDIZHAN on 13/01/2017.
//  Copyright © 2017 7renk. All rights reserved.
//

import UIKit

class Page1ViewController: UIViewController {
  
    var flower : Flower!
    @IBOutlet weak var flowerDetailLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Page 1"
    
    self.flowerDetailLabel.text = flower.name
    flower.water(flower: flower)
  }
  
}
