//
//  FlowersTableView.swift
//  ProtocolOriented
//
//  Created by ibrahim akar on 13/01/2017.
//  Copyright © 2017 7renk. All rights reserved.
//

import UIKit

protocol FlowersTableViewDelegate {
    func flowerDidSelect(flower:Flower)
}

class FlowersTableView: UITableView {

    var actionDelegate : FlowersTableViewDelegate?
    
    var flowers : [Flower] = []{
        didSet{
            self.reloadData()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource = self
        self.delegate = self
    }

}

extension FlowersTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let flower = flowers[indexPath.item]
        cell.textLabel?.text = flower.name
        cell.backgroundColor = flower.color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if flowers.count > indexPath.row {
            let item = flowers[indexPath.row]
            self.actionDelegate?.flowerDidSelect(flower: item)
        //let flower = flowerList[indexPath.row]
        //flower.water(flower) // water the flowers
        //flower.grow(flower) // grow flowers
        }
    }
}
