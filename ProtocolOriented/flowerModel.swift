//
//  flowerModel.swift
//  ProtocolOriented
//
//  Created by Fatih YILDIZHAN on 13/01/2017.
//  Copyright © 2017 7renk. All rights reserved.
//

import Foundation
import UIKit

class Flower {
  let name:String
  let color:UIColor
  
  init(_ name:String, color:UIColor) {
    self.name = name
    self.color = color
  }
}

// Define Protocols
protocol FlowerDelegates {
  func water(_ flw:Flower)
  func grow(_ flw:Flower)
}

// Fill the functions
extension Flower: FlowerDelegates {
  func water(_ flw: Flower) {
    print("water the \(flw.name)th flower")
  }
  
  func grow(_ flw: Flower) {
    print("grow the \(flw.name)th flower")
  }
}
