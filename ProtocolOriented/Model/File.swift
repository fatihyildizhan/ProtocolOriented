
//
//  FlowerModel.swift
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
    
    init(name:String, color:UIColor) {
        self.name = name
        self.color = color
    }
}

// Define Protocols
protocol FlowerDelegates {
    func water(flower:Flower)
    func grow(flower:Flower)
}

// Fill the functions
extension Flower: FlowerDelegates {
    func water(flower: Flower) {
        print("water the \(flower.name)th flower")
    }
    
    func grow(flower: Flower) {
        print("grow the \(flower.name)th flower")
    }
}
