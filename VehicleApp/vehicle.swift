//
//  vehicle.swift
//  VehicleApp
//
//  Created by rupeshku on 9/3/17.
//  Copyright © 2017 None. All rights reserved.
//

import Foundation
import ObjectMapper

class vechile: Mappable {
    var address: String
    var modelName:String
    var engineType:String
    var exterior:String
    var fuel:Int
    var vin :String
    var interior:String
    
    
    required init?(map: Map) {
        self.address = ""
        self.modelName = ""
        self.engineType = ""
        self.exterior = ""
        self.fuel = 0
        self.vin = ""
        self.interior = ""
        
    }
    
    func mapping(map: Map) {
        self.address <- map["address"]
        self.modelName <- map["name"]
        self.engineType <- map["engineType"]
        self.exterior <- map["exterior"]
        self.fuel <- map["fuel"]
        self.vin <- map["vin"]
        self.interior <- map["interior"]
        
    }
    
}
