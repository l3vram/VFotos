//
//  FotosTableViewCell.swift
//  tut
//
//  Created by Marvel Alvarez on 11/14/16.
//  Copyright (c) 2016 Marvel Alvarez. All rights reserved.
//

import UIKit

class FotosTableViewCell: UITableViewCell {

   
    @IBOutlet weak var LName: UILabel!
    
    @IBOutlet weak var foto: UIImageView!
    
    @IBOutlet weak var RatingObj: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
