//
//  DetailsViewController.swift
//  VehicleApp
//
//  Created by rupeshku on 9/3/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var exteriorLabel: UILabel!
    @IBOutlet weak var interiorLabel: UILabel!
    @IBOutlet weak var vinLabel: UILabel!
    @IBOutlet weak var engineTypeLabel: UILabel!
    @IBOutlet weak var fuelLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var vehicleNaameLabel: UILabel!
    
    var exterior:String = ""
    var vin:String = ""
    var engine:String = ""
    var interior:String = ""
    var fuel:String = ""
    var address:String = ""
    var name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addressLabel.adjustsFontSizeToFitWidth = true
        self.exteriorLabel.text = exterior
        self.addressLabel.text = address
        self.vinLabel.text = vin
        self.interiorLabel.text = interior
        self.fuelLabel.text = fuel
        self.engineTypeLabel.text = engine
        self.vehicleNaameLabel.text = name
    }
    
    
}
