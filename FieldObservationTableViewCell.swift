//
//  FieldObservationTableViewCell.swift
//  Field Survey
//
//  Created by Jamie Flores on 7/21/17.
//  Copyright © 2017 Jamie Flores. All rights reserved.
//

import UIKit

class FieldObservationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ObsercationImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
