//
//  Page2ViewController.swift
//  ProtocolOriented
//
//  Created by Fatih YILDIZHAN on 13/01/2017.
//  Copyright © 2017 7renk. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {
  
  @IBOutlet weak var flowersTableView: UITableView!
  var flowerList:[Flower] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Page 2"
    
    // Flower Colors
    let colorList:[UIColor] = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.orange, UIColor.black]
    
    // Fill the flower array
    for (index, color) in colorList.enumerated() {
      let flw = Flower("flower: \(index)", color: color)
      flowerList.append(flw)
    }
    
    // reload the tableview
    flowersTableView.reloadData()
  }  
}

extension Page2ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return flowerList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    
    let flower = flowerList[indexPath.item]
    cell.textLabel?.text = flower.name
    cell.backgroundColor = flower.color
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let flower = flowerList[indexPath.row]
    flower.water(flower) // water the flowers
    flower.grow(flower) // grow flowers
  }
}


