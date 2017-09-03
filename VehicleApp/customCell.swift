//
//  customCell.swift
//  VehicleApp
//
//  Created by rupeshku on 9/3/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {
    @IBOutlet weak var modelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
