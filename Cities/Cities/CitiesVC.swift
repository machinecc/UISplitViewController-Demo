//
//  CitiesVC.swift
//  Cities
//
//  Created by Xin on 15/5/2.
//  Copyright (c) 2015年 Xin. All rights reserved.
//

import Foundation
import UIKit


class CitiesVC: UITableViewController {
    
    var countryName : String? {
        didSet {
            if countryName == nil {
                return
            }
            else if countryName == oldValue {
                return
            }
            self.citiesNames = Consts.citiesInCountries[countryName!]
            self.title = "Cities in \(countryName!)"
        }
    }
    
    var citiesNames : [String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: IDs.CityNameCell)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.citiesNames!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCellWithIdentifier(IDs.CityNameCell) as? UITableViewCell
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: IDs.CityNameCell)
        }
        
        cell?.textLabel?.text = self.citiesNames![indexPath.row]
        
        return cell!
    }
    
}