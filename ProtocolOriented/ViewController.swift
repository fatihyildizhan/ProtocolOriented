//
//  ViewController.swift
//  ProtocolOriented
//
//  Created by Fatih YILDIZHAN on 13/01/2017.
//  Copyright © 2017 7renk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flower : Flower?
    
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Main"
  }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "page2segue" {
            if let controller = segue.destination as? Page2ViewController {
                controller.actionDelegate = self
            }
        }else if segue.identifier == "page1segue" {
            if let controller = segue.destination as? Page1ViewController {
                guard let selectedFlower = self.flower else {return}
                controller.flower = selectedFlower
            }
        }
    }
}

extension ViewController : Page2ViewControllerDelegate {
    func page2ViewControllerSelect(flower: Flower) {
        self.flower = flower
        self.performSegue(withIdentifier: "page1segue", sender: nil)
    }
}

