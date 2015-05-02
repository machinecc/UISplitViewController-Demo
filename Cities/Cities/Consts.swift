//
//  Consts.swift
//  Cities
//
//  Created by Xin on 15/4/30.
//  Copyright (c) 2015年 Xin. All rights reserved.
//

import Foundation

struct Consts {
    
    static let countriesInContinents : [String : [String]] = [
        "Asia" : ["China", "Japan", "Korea"],
        "North America" : ["US", "Canada"],
        "South America" : ["Mexico", "Brazil"],
        "Africa" : ["South Africa","Egypt", "Libya"],
        "Oceania" : ["Australia", "New Zealand"],
        "Antarctica" : []
    ]
    
    
    static let citiesInCountries : [String : [String]] = [
        "US" : ["WashiontonDC", "New York", "Pittsburg", "Los Angeles", "Chicago", "Houston", "Detroit"],
        "Canada" : ["Toronto", "Montreal", "Ottawa"],
        "China" : ["Beijing", "Shanghai", "Guangzhou", "Shenzhen", "Hong Kong", "Suzhou", "Tianjin"],
        "Japan" : ["Nagoya", "Tokyo", "Handa", "Tsushima", "Toyota", "Matsudo", "Kyoto"],
        "Korea" : ["Seoul", "Jeonju", "Andong"],
        "Mexico" : ["Mexico City", "Ecatepec", "Guadalajara"],
        "Brazil" : ["Rio de Janeiro", "Salvador", "Brasília"],
        "South Africa" : ["Cape Town", "Johannesburg", "Durban", "Pretoria", "Port Elizabeth", "Bloemfontein"],
        "Egypt" : ["Cairo", "Alexandria", "Giza"],
        "Libya" : ["Tripoli", "Benghazi", "Misrata"],
        "Australia" : ["Sydney", "Liverpool", "Darwin", "Brisbane", "Adelaide", "Melbourne"],
        "New Zealand" : ["Auckland", "Wellington", "Christchurch", "Hamilton", "Napier-Hastings"]
    ]
}



struct IDs {
    static let ContinentNameCell = "ContinentNameCell"
    static let CountryNameCell = "CountryNameCell"
    static let CityNameCell = "CityNameCell"
    
    static let SplitVewID = "SplitViewID"
    static let CountrisVCID = "CountrisVCID"
    
    
    static let ShowCitiesSegueID = "ShowCitiesSegueID"
}