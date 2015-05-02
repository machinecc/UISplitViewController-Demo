//
//  CountriesVC.swift
//  Cities
//
//  Created by Xin on 15/5/2.
//  Copyright (c) 2015年 Xin. All rights reserved.
//

import Foundation
import UIKit

class CountriesVC: UITableViewController {
    
    var continentName : String? {
        didSet {
            if continentName == oldValue {
                return
            }
            else {
                self.countryNames = Consts.countriesInContinents[self.continentName!]?.sorted(<)
                self.title = "Countries in \(continentName!)"
                //self.tableView.reloadData()
            }
        }
    }
    
    var countryNames : [String]?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Countries"
        self.continentName = "Africa"
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.countryNames!.count
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCellWithIdentifier(IDs.CountryNameCell) as? UITableViewCell
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: IDs.CountryNameCell)
        }
        
        cell?.textLabel?.text = self.countryNames![indexPath.row]
        
        return cell!
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == IDs.ShowCitiesSegueID {
            let destVC = segue.destinationViewController as! CitiesVC

            
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            
            destVC.countryName = self.countryNames![selectedIndexPath!.row]
        }
    }

    

}