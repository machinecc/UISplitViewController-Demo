//
//  CountriesVC.swift
//  Cities
//
//  Created by Xin on 15/4/30.
//  Copyright (c) 2015年 Xin. All rights reserved.
//

import Foundation
import UIKit


class ContinentsVC: UITableViewController {
    
    var continentsNames : [String]!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Continents"
        
        if self.continentsNames == nil {
            self.continentsNames = Consts.countriesInContinents.keys.array.sorted(<)
        }
        
        
        /*
        println("\n\nIn continents VC")
        println(self.splitViewController?.hashValue)
        println(self.splitViewController!.viewControllers.count)
        for vc in self.splitViewController!.viewControllers {
            println(vc.hashValue)
        }
        */


        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Consts.countriesInContinents.keys.array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let continentName = self.continentsNames[indexPath.row]
        
        var cell = self.tableView.dequeueReusableCellWithIdentifier(IDs.ContinentNameCell) as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: IDs.ContinentNameCell)
        }
        
        cell?.textLabel?.text = continentName
        
        return cell!
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let detailVC = appDelegate.detailViewController
        
        var countriesVC = detailVC.topViewController as? CountriesVC
        countriesVC?.continentName = self.continentsNames[indexPath.row]
        
        self.splitViewController?.showDetailViewController(detailVC, sender: self)
    }
}