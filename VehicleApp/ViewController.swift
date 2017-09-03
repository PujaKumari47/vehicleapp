//
//  ViewController.swift
//  VehicleApp
//
//  Created by rupeshku on 9/3/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var vechileListArray: [vechile] = [vechile]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "ListOfVehicles"
        vechileDetails()
        
    }
    func vechileDetails() {
        
        Alamofire.request("http://redirect.mytaxi.net/car2go/vehicles.json").responseJSON { response in
            debugPrint(response)
            
            if let responseValue = response.result.value as? NSDictionary {
                if let data = responseValue["placemarks"] as? NSArray {
                    if let vechileList = Mapper<vechile>().mapArray(JSONArray:data as! [[String : Any]]) {
                        self.vechileListArray = vechileList
                        self.tableView.delegate = self
                        self.tableView.dataSource = self
                        self.tableView.reloadData()
                    }
                }
            }
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vechileListArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "customCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! customCell
        cell.modelName.text = vechileListArray[indexPath.row].modelName
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "viewToDetailsViewControllerSegue", sender: vechileListArray[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        if let vechileDetailsViewController = segue.destination as? DetailsViewController {
            if let vechile = sender as? vechile {
                vechileDetailsViewController.exterior = vechile.exterior
                vechileDetailsViewController.interior = vechile.interior
                vechileDetailsViewController.vin = vechile.vin
                vechileDetailsViewController.fuel = String(vechile.fuel)
                vechileDetailsViewController.address = vechile.address
                vechileDetailsViewController.engine = vechile.engineType
                vechileDetailsViewController.name = vechile.modelName
                
            }
            
}

}
}
