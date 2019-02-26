//
//  MyTableViewCell.swift
//  Pagination
//
//  Created by Santhosh Ramidi on 1/22/19.
//  Copyright © 2019 Santhosh Ramidi. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
